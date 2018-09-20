import ConfigParser
import logging
import os

logConfigFile = os.path.join(os.path.dirname(__file__), 'config.ini')
logFile = os.path.join(os.path.dirname(__file__), 'log/origo.log')

config = ConfigParser.ConfigParser()
config.read(logConfigFile)

# get debugmode
debugmode = getattr(logging, config.get('logging','debugmode'))

# setup origo_loggers
origo_logger = logging.getLogger("Origo")
file_logger = logging.getLogger("OrigoFileLogger")

origo_logger.propagate = False
file_logger.propagate = False

# configurate origo_logger
origo_logger.setLevel(debugmode)

# setup origo formatters
debug_formatter = logging.Formatter('%(levelname)s : Origo : %(module)s : %(funcName)s : %(message)s')
info_formatter = logging.Formatter('Origo : %(module)s :%(message)s')

# setup origofile  formatters

user = 'unamed'
if os.environ.has_key(config.get('ENV','user')):
    user = os.environ[config.get('ENV','user')]

origo_file_formatter = logging.Formatter('%(asctime)s : %(levelname)s : Origo : %(module)s : ' \
                                         '%(funcName)s : %(message)s by ' + str(user))

# origo
debug_handler = logging.StreamHandler()
debug_handler.setLevel(logging.DEBUG)
debug_handler.setFormatter(debug_formatter)

info_handler = logging.StreamHandler()
info_handler.setLevel(logging.INFO)
info_handler.setFormatter(info_formatter)

# origo file
origo_file_handler = logging.FileHandler(logFile)
#origo_file_handler.setLevel(logging.CRITICAL)
origo_file_handler.setFormatter(origo_file_formatter)

file_logger.addHandler(origo_file_handler)

# add handlers
if debugmode == logging.INFO: origo_logger.addHandler(info_handler)
else: origo_logger.addHandler(debug_handler)
