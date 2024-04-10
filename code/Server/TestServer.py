import code.build.python.lcm as lcm

from code.Dto import vehicle
import time

def main():
    lc = lcm.LCM()
    msg = vehicle()
    msg.timestamp = int(time.time() * 1e6)
    msg.d = 11.2
    msg.str = "hi"

    while True:
        lc.publish("EXAMPLE_CHANNEL", msg.encode())
        time.sleep(1)

if __name__ == "__main__":
    main()