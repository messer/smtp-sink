from datetime import datetime
import asyncore
from smtpd import DebuggingServer

def run():
    foo = DebuggingServer(('0.0.0.0', 25), None, enable_SMTPUTF8=True)
    try:
        asyncore.loop()
    except KeyboardInterrupt:
        pass

if __name__ == '__main__':
	run()

