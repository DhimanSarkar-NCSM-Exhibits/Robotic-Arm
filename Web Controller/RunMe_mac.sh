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
    # persist into whichever rc file the user has
    for rc in "$HOME/.zshrc" "$HOME/.bash_profile" "$HOME/.bashrc"; do
        if [ -f "$rc" ]; then
            grep -qF "$dir" "$rc" || echo "export PATH=\"$dir:\$PATH\"" >> "$rc"
        fi
    done
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
    info "Python not found. Attempting to install via Homebrew..."

    # ── install Homebrew if missing (user-space, no sudo needed) ─────────────
    if ! command -v brew &>/dev/null; then
        info "Homebrew not found. Installing Homebrew (no admin required)..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        if [ $? -ne 0 ]; then
            error "Homebrew installation failed."
            error "Please install Python manually from https://www.python.org/downloads/"
            exit 1
        fi

        # Apple Silicon path
        if [ -f "/opt/homebrew/bin/brew" ]; then
            add_to_path "/opt/homebrew/bin"
            eval "$(/opt/homebrew/bin/brew shellenv)"
        # Intel path
        elif [ -f "/usr/local/bin/brew" ]; then
            add_to_path "/usr/local/bin"
            eval "$(/usr/local/bin/brew shellenv)"
        fi
        ok "Homebrew installed."
    else
        ok "Homebrew already present."
    fi

    # ── install python via brew ───────────────────────────────────────────────
    brew install python
    if [ $? -ne 0 ]; then
        error "Python installation via Homebrew failed."
        error "Please install Python manually from https://www.python.org/downloads/"
        exit 1
    fi

    # refresh PATH with brew-installed python
    BREW_PYTHON=$(brew --prefix python)/libexec/bin
    add_to_path "$BREW_PYTHON"

    for cmd in python3 python; do
        if command -v "$cmd" &>/dev/null; then
            PYTHON="$cmd"
            break
        fi
    done

    if [ -z "$PYTHON" ]; then
        error "Python was installed but is still not accessible in this session."
        error "Please open a new Terminal and run this script again."
        exit 1
    fi
    ok "Python installed successfully: $($PYTHON --version)"
fi

echo

# ── 2. CHECK PIP ─────────────────────────────────────────────────────────────
echo "[2/4] Checking pip..."

if ! "$PYTHON" -m pip --version &>/dev/null; then
    info "pip not found. Installing via ensurepip..."
    "$PYTHON" -m ensurepip --upgrade 2>/dev/null

    if ! "$PYTHON" -m pip --version &>/dev/null; then
        info "ensurepip unavailable. Trying get-pip.py..."
        curl -fsSL https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
        "$PYTHON" /tmp/get-pip.py --user
        rm -f /tmp/get-pip.py

        add_to_path "$HOME/Library/Python/$("$PYTHON" -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')/bin"
    fi

    if ! "$PYTHON" -m pip --version &>/dev/null; then
        error "pip could not be installed."
        exit 1
    fi
    ok "pip installed successfully."
else
    ok "pip $("$PYTHON" -m pip --version | awk '{print $2}') found."
fi

# use 'python -m pip' throughout so we always target the right interpreter
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

# ── LAUNCH APP ───────────────────────────────────────────────────────────────
echo "============================================"
echo "   All dependencies satisfied!"
echo "   Starting app.py ..."
echo "============================================"
echo

# cd to the directory this script lives in
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
