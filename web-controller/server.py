from flask import Flask, render_template, request, jsonify
import serial
import serial.tools.list_ports

app = Flask(__name__, template_folder='.')

ser = None

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/ports')
def get_ports():
    ports = [p.device for p in serial.tools.list_ports.comports()]
    return jsonify(ports)

@app.route('/connect', methods=['POST'])
def connect():
    global ser
    data = request.json
    port = data.get('port')
    baud = int(data.get('baud', 115200))
    try:
        if ser and ser.is_open:
            ser.close()
        ser = serial.Serial(port, baud, timeout=1)
        return jsonify({'status': 'connected'})
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/disconnect', methods=['POST'])
def disconnect():
    global ser
    try:
        if ser and ser.is_open:
            ser.close()
        return jsonify({'status': 'disconnected'})
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

@app.route('/send', methods=['POST'])
def send():
    global ser
    data   = request.json
    angles = data.get('angles', [])

    # Strict format: ang1,ang2,ang3,ang4\n
    # e.g.  90,32,5,6\n
    msg = '{},{},{},{}\n'.format(angles[0], angles[1], angles[2], angles[3])

    try:
        if ser and ser.is_open:
            ser.write(msg.encode())
            return jsonify({'status': 'sent', 'message': msg.strip()})
        else:
            return jsonify({'status': 'error', 'message': 'Not connected'}), 400
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)