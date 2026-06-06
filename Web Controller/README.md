# 🤖 Servo Controller
> Control servo motors from your **browser** — no extra software needed!

---

## 🧰 What You Need
- A computer (Windows / Mac / Linux)
- An Arduino with servos wired up
- A USB cable

---

## 🚀 How to Run

### 🪟 Windows
Double-click `RunMe_windows.bat` — that's it!

---

### 🍎 Mac
Double-click `RunMe_mac.sh` to run it.

> **If nothing happens:**
> 1. Right-click the file → **Open With** → **Terminal**
> 2. A prompt may ask *"Are you sure?"* — click **Open**
>
> **Still not working?** Open Terminal, go to this folder, and run:
> ```bash
> chmod +x RunMe_mac.sh && ./RunMe_mac.sh
> ```

---

### 🐧 Linux
Double-click `RunMe_linux.sh` to run it.

> **If nothing happens:**
> 1. Right-click the file → **Properties** → **Permissions** tab
> 2. Check ✅ **"Allow executing file as program"** → close and double-click again
>
> *(The exact wording may differ slightly between file managers like Nautilus, Dolphin, or Thunar — look for anything that says "executable" or "execute")*
>
> **Still not working?** Open Terminal, go to this folder, and run:
> ```bash
> chmod +x RunMe_linux.sh && ./RunMe_linux.sh
> ```

---

Then open your browser and go to → **http://127.0.0.1:5000**

---

## 🎮 How to Use

| Step | What to do |
|------|-----------|
| 1 | Click **Refresh** to find your Arduino's port |
| 2 | Select the port and click **Connect** |
| 3 | Drag the sliders to move the servos |
| 4 | Hit **Send All** to send the angles |

### ⌨️ Keyboard Shortcuts
| Keys | Motor |
|------|-------|
| `Q` / `A` | Motor 1 ↑ ↓ |
| `W` / `S` | Motor 2 ↑ ↓ |
| `E` / `D` | Motor 3 ↑ ↓ |
| `R` / `F` | Motor 4 ↑ ↓ |

> 💡 Click anywhere outside the input boxes first, then use the keys!

---

## 📡 Serial Format
The app sends angles to Arduino like this:
```
90,45,30,60
```
Four angles, separated by commas — one line per send.

---

## 📁 File Structure
```
your-folder/
├── app.py                  ← Flask server
├── index.html              ← Web UI
├── RunMe_windows.bat       ← Windows launcher
├── RunMe_mac.sh            ← Mac launcher
└── RunMe_linux.sh          ← Linux launcher
```