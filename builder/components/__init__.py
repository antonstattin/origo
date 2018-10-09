import os
import inspect
import importlib

def _checkIgnore(tocheck, ignore = ['.py', '.pyc']):


    ok = True
    for value in ignore:
        if value in tocheck: ok=False

    return ok


def getAvailableComponents():

    componentpath = os.path.dirname(__file__)

    components = {}
    for app in os.listdir(componentpath):
        if _checkIgnore(app): components.update({app:{}})

    for app in components.keys():
        compapppath = os.path.join(os.path.dirname(__file__), app)

        for folder in os.listdir(compapppath):
            path = os.path.join(compapppath, folder)
            if not os.path.isdir(path): continue

            components[app].update({folder:[]})
            for cfile in os.listdir(path):

                mod = 'origo.builder.components.%s.%s.%s'%(app, folder, cfile.replace('.py', ''))

                if _checkIgnore(cfile, ['.pyc', '__init__.py']):
                    components[app][folder].append(mod)

    return components


def getBuildClass(mod):

    modname = mod.rpartition('.')[2]
    modobj = importlib.import_module(mod)

    for name, obj in inspect.getmembers(modobj):
        if inspect.isclass(obj):
            print name
