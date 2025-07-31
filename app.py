from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def root():
    return render_template('root.html')

if __name__ == '__main__':
    app.run('0.0.0.0', port=3000, debug=True)
