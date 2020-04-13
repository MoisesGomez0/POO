#-*- coding: utf-8 -*-

import sys, re

class FileRegistry:
    def __init__(self):
        self.name = ""
        self.size = 0
        self.date = ""
    def __str__(self):
        return(
            "File Name: %s\n\tFile Size: %s bytes\n\tFile Date: %s\n" %(
                self.name,
                self.size,
                self.date
            )
        )

class ProcessLs:
    def __init__(self):
        self.textLines = []
        self.registries = []

    def read(self):
        self.textLines = [] #Limpiando la variable cuanod existe una nueva ejecución
        while True:
            text = sys.stdin.readline()
            if text == "": break
            self.textLines.append(text)
        return self
    def process(self):
        self.registries = [] #Se limpia la variable cuando se realiza una nueva ejecución
        for line in self.textLines:
            if re.match(r".+\d{2}:\d{2}.+",line):
                registry =FileRegistry()
                registry.name = re.split(r"\d{2}:\d{2}",line)[-1][:-1]
                registry.size = int(re.sub(r"\D+}","",re.split(r" +",line)[4]))
                registry.date = re.findall(r"\w{3} +\d{1,2} +\d{2}:\d{2}",line)[0]
                self.registries.append(registry)
        return self
    def print(self):
        for i in self.registries:
            print(i)


ls = ProcessLs()
ls.read().process().print() #Cada método debe retornar el objeto completo