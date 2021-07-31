from datetime import datetime

if __name__ == "__main__":
    mode = 10 if 7 <= datetime.now().hour < 22 else 20
    exit(mode)