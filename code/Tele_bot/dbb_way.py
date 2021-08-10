from sqlalchemy import  create_engine
from sqlalchemy.dialects import postgresql, sqlite

engine = create_engine('sqlite:////home/mikhail/Py_step/Tele_bot/botuploads9.db')  # используя относительный путь
# engine = create_engine('sqlite:////path/to/sqlite3.db')  # абсолютный путь
# engine = create_engine("mysql://mikhail:1234@127.0.0.1/database_name_03", echo=True)
# engine = create_engine('sqlite:///mikhail:1234@127.0.0.1/d/botuploads8.db',echo=True)  # используя относительный путь

# engine.connect()
# print(engine)
print(engine)
