import os
from os import listdir
import vim

def AddCsFile():
    cwd = os.getcwd()
    print cwd
    for file in os.listdir(cwd):
        if file.endswith("_cscope.out"):
            vim.command('cscope add %s'%file)
