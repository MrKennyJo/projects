import os
import pylint.lint

CHECKS = "C0301,C0103,W0611,R0913,E1101"

def run_pylint():
    for file in os.listdir("."):
        if file.endswith(".py"):
            pylint.lint.Run([file, f"--disable=all", f"--enable={CHECKS}"])

if __name__ == "__main__":
    run_pylint()
