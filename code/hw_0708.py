"""
Реализуйте приложение «Корзина» для веб-магазина.
Оно должно предоставлять функциональность для работы
с корзиной. Возможности приложения:
■ ■ Добавление товара в корзину;
■ ■ Удаление товара из корзины;
■ ■ Изменение товара в корзине;
■ ■ Полная очистка корзины;
■ ■ Поиск данных в корзине;
■ ■ Просмотр содержимого корзины.
"""

import random
import redis
from time import sleep
import pprint
import json


import random
import redis
from time import sleep
import pprint
import json
 
random.seed(444)
hats = {f"hat:{random.getrandbits(32)}": i for i in (
    {
        "color": "black",
        "price": 49.99,
        "style": "fitted",
        "quantity": 1000,
        "npurchased": 0,
    },
    {
        "color": "maroon",
        "price": 59.99,
        "style": "hipster",
        "quantity": 500,
        "npurchased": 0,
    },
    {
        "color": "green",
        "price": 99.99,
        "style": "baseball",
        "quantity": 200,
        "npurchased": 0,
    })
}

# Создаем корзину

r = redis.Redis(db=4)
print(r)
	
with r.pipeline() as pipe:
    for h_id, hat in hats.items():
        pipe.hmset(h_id, hat)
    pipe.execute()


r.bgsave()
print(r.hgetall("hat:56854717"))
print(r.keys())
print(hats.items())
r.hmset ('hat:000004', {"color": "yellow",
        "price": 99.99,
        "style": "baseball",
        "quantity": 200,
        "npurchased": 0,}) 
print(r.keys())
hats['hat:000004'] = {"color": "yellow",
        "price": 99.99,
        "style": "baseball",
        "quantity": 200,
        "npurchased": 0,}  

print(hats.items())
r.keys()

# ■ ■ Удаление товара из корзины;

r.hincrby("hat:000004", "quantity", -200)
print(r.hget("hat:000004", "quantity"))
print(r.delete("hat:000004"))
# >>>b'0'

# ■ ■ Изменение товара в корзине;
# 'hats:000001', {"color": "gwwwww","price": 9999999.99,"style": "bas","quantity": 2000,"npurchased": 0,})

r.hset("hat:56854717", "color", "yellowblack")
print(r.hgetall('hat:56854717'))
# print(hats.items())

# ■ ■ Поиск данных в корзине;
print(r.hgetall('hat:1326692461'))
print(r.hgetall('hat:236154736'))
print(r.hgetall("hat:000004"))

# ■ ■ Просмотр содержимого корзины.

print(hats.items())
print(r.hgetall('hats'))



# ■ ■ Полная очистка корзины;
# r.flushdb()
# print(r.keys())