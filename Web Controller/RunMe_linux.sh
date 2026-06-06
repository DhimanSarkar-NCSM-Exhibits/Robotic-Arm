#!/bin/bash

# ── colours ──────────────────────────────────────────────────────────────────
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
RED="\033[0;31m"
RESET="\033[0m"

ok()    { echo -e "${GREEN}[OK]${RESET}    $*"; }
info()  { echo -e "${YELLOW}      $*${RESET}"; }
error() { echo -e "${RED}[ERROR]${RESET} $*"; }

echo "============================================"
echo "   Dependency Checker and App Launcher"
echo "============================================"
echo

# ── helper: add a path to the current session + shell rc files ───────────────
add_to_path() {
    local dir="$1"
    export PATH="$dir:$PATH"
    for rc in "$HOME/.bashrc" "$HOME/.bash_profile" "$HOME/.profile" "$HOME/.zshrc"; do
        if [ -f "$rc" ]; then
            grep -qF "$dir" "$rc" || echo "export PATH=\"$dir:\$PATH\"" >> "$rc"
        fi
    done
}

# ── detect package manager ───────────────────────────────────────────────────
detect_pkg_manager() {
    if command -v apt-get &>/dev/null; then echo "apt"
    elif command -v dnf &>/dev/null;     then echo "dnf"
    elif command -v yum &>/dev/null;     then echo "yum"
    elif command -v pacman &>/dev/null;  then echo "pacman"
    elif command -v zypper &>/dev/null;  then echo "zypper"
    else echo "unknown"
    fi
}

# ── install a system package (tries sudo; falls back gracefully) ─────────────
install_sys_pkg() {
    local pkg="$1"
    local mgr
    mgr=$(detect_pkg_manager)

    if [ "$mgr" = "unknown" ]; then
        error "No supported package manager found (apt/dnf/yum/pacman/zypper)."
        return 1
    fi

    if command -v sudo &>/dev/null && sudo -n true 2>/dev/null; then
        # passwordless sudo available
        SUDO="sudo"
    elif command -v sudo &>/dev/null; then
        info "sudo may prompt for your password to install system packages."
        SUDO="sudo"
    else
        SUDO=""
    fi

    case "$mgr" in
        apt)    $SUDO apt-get install -y "$pkg" ;;
        dnf)    $SUDO dnf install -y "$pkg" ;;
        yum)    $SUDO yum install -y "$pkg" ;;
        pacman) $SUDO pacman -S --noconfirm "$pkg" ;;
        zypper) $SUDO zypper install -y "$pkg" ;;
    esac
}

# ── 1. CHECK PYTHON ──────────────────────────────────────────────────────────
echo "[1/4] Checking Python..."

PYTHON=""
for cmd in python3 python; do
    if command -v "$cmd" &>/dev/null; then
        ver=$("$cmd" --version 2>&1)
        ok "$ver found  ($(command -v $cmd))"
        PYTHON="$cmd"
        break
    fi
done

if [ -z "$PYTHON" ]; then
    info "Python not found. Attempting to install..."

    mgr=$(detect_pkg_manager)

    # map package name per distro
    case "$mgr" in
        apt)                   PY_PKG="python3" ;;
        dnf|yum)               PY_PKG="python3" ;;
        pacman)                PY_PKG="python" ;;
        zypper)                PY_PKG="python3" ;;
        *)
            # fallback: try pyenv (no root needed)
            info "No system package manager available. Trying pyenv (user-space install)..."
            if ! command -v git &>/dev/null; then
                error "git is required to install pyenv but was not found."
                error "Please install Python manually: https://www.python.org/downloads/"
                exit 1
            fi
            curl -fsSL https://pyenv.run | bash
            add_to_path "$HOME/.pyenv/bin"
            export PYENV_ROOT="$HOME/.pyenv"
            eval "$(pyenv init -)"
            pyenv install 3.12.4
            pyenv global 3.12.4
            PY_PKG=""
            ;;
    esac

    if [ -n "$PY_PKG" ]; then
        install_sys_pkg "$PY_PKG"
        if [ $? -ne 0 ]; then
            error "Failed to install Python via system package manager."
            error "Please install Python manually: https://www.python.org/downloads/"
            exit 1
        fi
    fi

    # also install venv/distutils where needed (Debian/Ubuntu split packages)
    if [ "$mgr" = "apt" ]; then
        PY_VER=$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")' 2>/dev/null)
        install_sys_pkg "python${PY_VER}-venv" &>/dev/null
        install_sys_pkg "python3-distutils" &>/dev/null
    fi

    for cmd in python3 python; do
        if command -v "$cmd" &>/dev/null; then
            PYTHON="$cmd"
            break
        fi
    done

    if [ -z "$PYTHON" ]; then
        error "Python was installed but is still not accessible."
        error "Please open a new terminal and run this script again."
        exit 1
    fi
    ok "Python installed successfully: $($PYTHON --version)"
fi

echo

# ── 2. CHECK PIP ─────────────────────────────────────────────────────────────
echo "[2/4] Checking pip..."

if ! "$PYTHON" -m pip --version &>/dev/null; then
    info "pip not found. Trying ensurepip..."
    "$PYTHON" -m ensurepip --upgrade 2>/dev/null

    if ! "$PYTHON" -m pip --version &>/dev/null; then
        info "ensurepip unavailable. Trying system package..."
        mgr=$(detect_pkg_manager)
        case "$mgr" in
            apt)    install_sys_pkg "python3-pip" ;;
            dnf|yum) install_sys_pkg "python3-pip" ;;
            pacman) install_sys_pkg "python-pip" ;;
            zypper) install_sys_pkg "python3-pip" ;;
        esac
    fi

    if ! "$PYTHON" -m pip --version &>/dev/null; then
        info "Falling back to get-pip.py..."
        curl -fsSL https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
        "$PYTHON" /tmp/get-pip.py --user
        rm -f /tmp/get-pip.py

        PY_VER=$("$PYTHON" -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')
        add_to_path "$HOME/.local/bin"
    fi

    if ! "$PYTHON" -m pip --version &>/dev/null; then
        error "pip could not be installed."
        exit 1
    fi
    ok "pip installed successfully."
else
    ok "pip $("$PYTHON" -m pip --version | awk '{print $2}') found."
fi

PIP="$PYTHON -m pip"

echo

# ── 3. CHECK FLASK ───────────────────────────────────────────────────────────
echo "[3/4] Checking Flask..."

if ! "$PYTHON" -c "import flask" &>/dev/null; then
    info "Flask not found. Installing..."
    $PIP install --user flask
    if [ $? -ne 0 ]; then
        error "Failed to install Flask."
        exit 1
    fi
    # ensure ~/.local/bin is in PATH (pip --user target on Linux)
    add_to_path "$HOME/.local/bin"
    ok "Flask installed successfully."
else
    ok "Flask $("$PYTHON" -c "import flask; print(flask.__version__)") found."
fi

echo

# ── 4. CHECK PYSERIAL ────────────────────────────────────────────────────────
echo "[4/4] Checking pyserial..."

if ! "$PYTHON" -c "import serial" &>/dev/null; then
    info "pyserial not found. Installing..."
    $PIP install --user pyserial
    if [ $? -ne 0 ]; then
        error "Failed to install pyserial."
        exit 1
    fi
    ok "pyserial installed successfully."
else
    ok "pyserial $("$PYTHON" -c "import serial; print(serial.__version__)") found."
fi

echo

# ── serial port permission (common Linux gotcha) ─────────────────────────────
if ! groups | grep -qE "dialout|uucp"; then
    echo -e "${YELLOW}[WARN]${RESET}  Your user is not in the 'dialout' group."
    echo "        Serial port access may fail. To fix, run:"
    echo "          sudo usermod -aG dialout \$USER"
    echo "        then log out and back in."
    echo
fi

# ── LAUNCH APP ───────────────────────────────────────────────────────────────
echo "============================================"
echo "   All dependencies satisfied!"
echo "   Starting app.py ..."
echo "============================================"
echo

cd "$(dirname "$0")"

if [ ! -f "app.py" ]; then
    error "app.py not found in the script directory: $(pwd)"
    exit 1
fi

"$PYTHON" app.py
if [ $? -ne 0 ]; then
    echo
    error "app.py exited with an error. See output above."
    exit 1
fi
