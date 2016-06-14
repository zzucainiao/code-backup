import logging

logging.basicConfig(level=logging.INFO, filename='mylog.log')
logging.info("starting program")
logging.info("trying to divide 1 by 0")

print(1/0)

logging.info("ending program")
