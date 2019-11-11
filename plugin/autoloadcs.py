import os
from os import listdir
import vim

def AddCsFile():
    for file in os.listdir(os.getcwd()):
        if file.endswith("_cscope.out"):
            vim.command('cscope add %s'%file)
        elif file == "cscope.out":
            vim.command('cscope add %s'%file)
