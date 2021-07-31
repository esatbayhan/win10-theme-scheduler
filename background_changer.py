from sys import argv
from ctypes import windll
from random import choice
from os import listdir

path = "C:/Users/Esat Sefa Bayhan/Pictures/Wallpaper/"

def background_change(path):
    windll.user32.SystemParametersInfoW(20, 0, path , 0)

def get_image(mode):
    """
    with open("path.txt", "r") as path_file:
        path = next(path_file)
    """
    
    global path
    path += mode + "/"

    return path + choice(listdir(path))

def get_mode():
    if argv[1] in ("l", "light"): return "light"
    elif argv[1] in ("d", "dark"): return "dark"
    else: print("faulty arguments, got", argv); exit()

if __name__ == "__main__":
    background_change(get_image(get_mode()))