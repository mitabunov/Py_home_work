"""
Создать таблицы в базе данных декларативным способом (на основе классов) 
"""
from typing import ItemsView
from sqlalchemy import create_engine, MetaData, Table, Integer, String, \
    Column, DateTime, ForeignKey, Numeric, CheckConstraint
from sqlalchemy import Column, ForeignKey, Integer, String  
from sqlalchemy.ext.declarative import declarative_base  
from sqlalchemy.orm import relationship  
from sqlalchemy import create_engine      
from datetime import datetime
from sqlalchemy.orm import Session, sessionmaker

# metadata = MetaData()
# engine = create_engine("mysql://mikhail:1234@127.0.0.1")

# NEW_DB_NAME = 'database_name_03'

# with engine.connect() as conn:
#     conn.execute("commit")
#     # Do not substitute user-supplied database names here.
#     conn.execute(f"CREATE DATABASE {NEW_DB_NAME}")


engine = create_engine("mysql://mikhail:1234@127.0.0.1/database_name_03", echo=True)

Base = declarative_base()  

class Customers(Base):
    __tablename__ = 'Customers'
    
    id_custom = Column( Integer, primary_key=True)
    first_name = Column(String(100), nullable=False)
    last_name = Column(String(100), nullable=False)
    username = Column(String(50), nullable=False)
    email = Column(String(200), nullable=False)
    address = Column(String(200), nullable=False)
    town = Column(String(50), nullable=False)
    created_on = Column(DateTime(), default=datetime.now)
    updated_on =Column(DateTime(), default=datetime.now, onupdate=datetime.now)
    orders = relationship("Orders", backref='Customer')

class Items(Base):
    __tablename__ = 'Items'

    id = Column(Integer(), primary_key=True)
    name = Column( String(200), nullable=False)
    cost_price = Column(Numeric(10, 2), nullable=False)
    selling_price = Column(Numeric(10, 2),  nullable=False)
    quantity = Column( Integer(), nullable=False)
    # CheckConstraint('quantity > 0', name='quantity_check')


class Orders(Base):
    __tablename__ = "Orders"

    id = Column( Integer(), primary_key=True)
    customer_id = Column( ForeignKey('Customers.id_custom'))
    date_placed = Column( DateTime(), default=datetime.now)
    date_shipped = Column( DateTime())


class OrderLines(Base):
    __tablename__ = 'Order_lines'
    id = Column( Integer(), primary_key=True)
    order_id = Column( ForeignKey('Orders.id'))
    item_id = Column( ForeignKey('Items.id'))
    quantity = Column( Integer())
    order = relationship("Orders", backref='order_lines')
    item = relationship("Items")



# Base.metadata.create_all(engine)
session = Session(bind=engine)

c1 = Customers(
    first_name = 'Dmitriy',
    last_name = 'Yatsenko',
    username = 'Moseend',
    email = 'moseend@mail.com',
    address = 'trytrytrytr',
    town = 'ytrtyrytrytrytr'
)

c2 = Customers(
    first_name = 'Valeriy',
    last_name = 'Golyshkin',
    username = 'Fortioneaks',
    email = 'fortioneaks@gmail.com',
    address = 'trytrytrytr',
    town = 'ytrtyrytrytrytr'
)

c3 = Customers(
    first_name = "Vadim", 
    last_name = "Moiseenko", 
    username = "Antence73", 
    email = "antence73@mail.com",
    address = 'trytrytrytr',
    town = 'ytrtyrytrytrytr'
)

c4 = Customers(          
    first_name = "Vladimir", 
    last_name = "Belousov", 
    username = "Andescols", 
    email = "andescols@mail.com",
    address = 'trytrytrytr',
    town = 'ytrtyrytrytrytr'       
)

c5 = Customers(
    first_name = "Tatyana", 
    last_name = "Khakimova", 
    username = "Caltin1962", 
    email = "caltin1962@mail.com",
    address = 'trytrytrytr',
    town = 'ytrtyrytrytrytr'
)

c6 = Customers(
    first_name = "Pavel", 
    last_name = "Arnautov", 
    username = "Lablen", 
    email = "lablen@mail.com",
    address = 'trytrytrytr',
    town = 'ytrtyrytrytrytr'
)

session.add_all([c1, c2, c3, c4, c5, c6])
session.commit()

i1 = Items(name = 'Chair', cost_price = 9.21, selling_price = 10.81, quantity = 5)
i2 = Items(name = 'Pen', cost_price = 3.45, selling_price = 4.51, quantity = 3)
i3 = Items(name = 'Headphone', cost_price = 15.52, selling_price = 16.81, quantity = 50)
i4 = Items(name = 'Travel Bag', cost_price = 20.1, selling_price = 24.21, quantity = 50)
i5 = Items(name = 'Keyboard', cost_price = 20.1, selling_price = 22.11, quantity = 50)
i6 = Items(name = 'Monitor', cost_price = 200.14, selling_price = 212.89, quantity = 50)
i7 = Items(name = 'Watch', cost_price = 100.58, selling_price = 104.41, quantity = 50)
i8 = Items(name = 'Water Bottle', cost_price = 20.89, selling_price = 25, quantity = 50)

session.add_all([i1, i2, i3, i4, i5, i6, i7, i8])
session.commit()

o1 = Orders(Customer=c1)
o2 = Orders(Customer=c2)

line_item1 = OrderLines(order = o1, item = i1, quantity =  3)
line_item2 = OrderLines(order = o1, item = i2, quantity =  2)
line_item3 = OrderLines(order = o2, item = i1, quantity =  1)
line_item3 = OrderLines(order = o2, item = i2, quantity =  4)

session.add_all([o1, o2])

session.new
session.commit()

# o3 = Orders()
# orderline1 = OrderLines(item = i1, quantity = 5)
# orderline2 = OrderLines(item = i2, quantity = 10)

# o3.line_items.append(orderline1)
# o3.line_items.append(orderline2)

# session.add_all([o3,])
# session.new
# session.commit()








