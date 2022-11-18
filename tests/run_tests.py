from robot import run_cli as robot_run_cli
import os
from pathlib import Path


current_dir = Path(__file__).absolute().parent
os.chdir(current_dir)

pythonpath = os.getenv("PYTHONPATH")

if pythonpath:
    os.environ["PYTHONPATH"] += f":{str(current_dir)}"
else:
    os.environ["PYTHONPATH"] = str(current_dir)

def run_tests():

    robot_run_cli(['test.robot'])


if __name__ == '__main__':
    run_tests()

