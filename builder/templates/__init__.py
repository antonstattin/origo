import importlib
import logging
logger = logging.getLogger('Origo')

def initFromTemplate(template, name, location):
    """
    template names should be the name of the module
    example: maya.prop or maya.biped

    :param template: mod path to template, relative to this folder (maya.prop etc.)
    :type template: str

    :param location: path to copy the template to
    :param type: str (path)
    """

    mod = importlib.import_module(template)
    mod.copy(location)

    logger.info('Created new project based on' \
                '"%s" template to path "%s"'%(template, location))
