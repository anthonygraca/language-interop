#!/usr/bin/python3

import ctypes
import pathlib

if __name__ == "__main__":
    # Load the shared library into ctypes
    c_lib = ctypes.CDLL((pathlib.Path().absolute() / pathlib.Path("build/c")) / "libprint-from-c.so")
    c_lib.PrintFromC()
    cc_lib = ctypes.CDLL((pathlib.Path().absolute() / pathlib.Path("build/cc")) / "libprint-from-cpp.so")
    cc_lib.PrintFromCpp()
    print("Hello world from python!")
