#Qt imports
try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui


class MainWindowSignals(object):

    def __init__(self):
        print "signals init"
