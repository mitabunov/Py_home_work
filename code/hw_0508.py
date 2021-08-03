"""
Создайте приложение «Социальная сеть». Приложение
должно хранить информацию о пользователе, его друзьях,
постах пользователя. Возможности приложения:
■ ■ Добавление пользователя;
■ ■ Удаление пользователя;
■ ■ Редактирование информации о пользователе;
■ ■ Поиск пользователя по ФИО;
■ ■ Просмотр информации о пользователе;
■ ■ Просмотр всех друзей пользователя;
■ ■ Просмотр всех постов пользователя.
https://www.w3big.com/ru/mongodb/mongodb-relationships.html

"""
import pymongo
from pymongo import cursor
from pprint import pprint
import typing

# устанавливаем соединение с MongoDB
# MongoDB должна быть запущена на компьютере, 27017 - стандартный порт
db_client = pymongo.MongoClient("mongodb://localhost:27017/")  # MongoClient('localhost', 27017)

# подключаемся к БД pyloungedb, если её нет, то будет создана
current_db = db_client["basket_0208"]  # dictionary style
# получаем колекцию из нашей БД, если её нет, то будет создана
# Коллекция - это группа документов, которая хранится в БД MongoDB (эквалент таблицы в ркляционных базах)
collection = current_db["basket3"]  # current_db.youtubers

users_all = [{
   'name': 'PyLounge',
   'nick': '@tyrytr',
    'posts': [{'title':'1', 'main':'664464465465464664ndvmn,d'},
            {'title':'1111', 'main':'664464465465464664jwrlkjwelj'},
            {'title':'1555', 'main':'664464465reww;lker465464664'},
            {'title':'qqqq1', 'main':'iruweiou664464465465464664'}],
    'friends':[{'name': 'PyL','name': 'Gounge', 'name': 'Punge'}]},

{   'name': 'PyL',
   'nick': '@tyr',
    'posts': [{'title':'00001', 'main':'662222222222224464465465464664'},
            {'title':'0101', 'main':'66446446546546466454dfsfvd4'},
            {'title':'1000', 'main':'66446446546546466erw4'},
            {'title':'12222', 'main':'664464465465464664erwrwe'}],
    'friends':[{'name': 'PyLounge'},{'name': 'Punge'}]},

{   'name': 'Lounge',
   'nick': '@ytr',
    'posts': [{'title':'1vvvv', 'main':'664464465fff465464664'},
            {'title':'1vvv', 'main':'6644644654654646ff64'},
            {'title':'1vvvvv', 'main':'6644644654654fff64664'},
            {'title':'1rrrr', 'main':'664464465rrr465464664'}],
    'friends':[{'name': 'PyLounge'},{'name': 'Punge'},{'name': 'Gounge'}]},

{   'name': 'Punge',
   'nick': '@tpppuu',
    'posts': [{'title':'1iii', 'main':'664464iiiii465465464664'},
            {'title':'1  ', 'main':'66446    4465465464664'},
            {'title':'166666', 'main':'6644bbbbbbb64465465464664'},
            {'title':'3331', 'main':'6644644654654555564664'}],
    'friends':[{'name': 'PyLounge'},{'name': 'Gounge'}]},
{'name': 'Gounge',
   'nick': '@goooga',
    'posts': [{'title':'15555', 'main':'664464465465464664'},
            {'title':'551', 'main':'664464465465464664'},
            {'title':'1555', 'main':'664464465465464664'},
            {'title':'155', 'main':'664464465465464664'}],
    'friends':[{'name': 'PyLounge'},{'name': 'Punge'},{'name': 'PyL'}]}]

ins_result = collection.insert_many(users_all)  # до1бавляет несколько записей в коллекцию collection
print(ins_result.inserted_ids)

#■ ■ Добавление пользователя;
user_one = {
            'name': 'Misha',
            'nick': '@misha',
            'posts': [{'title':'1', 'main':'664464465465464664ndvmn,d'},
            {'title':'1111', 'main':'664464465465464664jwrlkjwelj'},
            {'title':'1555', 'main':'664464465reww;lker465464664'},
            {'title':'qqqq1', 'main':'iruweiou664464465465464664'}],
            'friends':[{'name': 'PyL'},{'name': 'Gounge'}, {'name': 'Punge'}]
            }

def add_user_one(user_one):
    ins_result = collection.insert_one(user_one)  # добавляет одну запись в коллекцию collection
    print(ins_result.inserted_id)  # id вставленного объекта
# add_user_one(user_one)

#■ ■ Удаление пользователя;

def del_user_one():
    collection.remove({'name':'Misha'})
    print('После удаления:')
    for channel in collection.find():
        print(channel)
del_user_one()

# ■ ■ Редактирование информации о пользователе;
def change_info(collection):
    print('Что вы хотите изменить ?\nИмя - 1\nДобавить друга - 2\nУдалить друга - 3\nДобавить пост - 4\nУдалить пост - 5')
    str_inp = str(input())
    if str_inp =='1':
        print('Вы выбрали изменение имени')
        old_name = str(input('Старое имя: '))
        new_name = str(input('Новое имя: '))
        print(collection.replace_one({'name': old_name}, {'name': new_name}))
        
    elif str_inp =='2':
        print('Вы выбрали добавление друга')
        youre_name = str(input('Ваше имя: '))
        new_name_fr = str(input('Имя друга: '))
        # cursor=collection.update({ 'name': youre_name } , {'$push':{ 'friends': {'name': new_name_fr }}})
        # for document in cursor:
        #     print(document)
        print(collection.update({ 'name': youre_name },
                                {'$push':{ 'friends': {'name': new_name_fr }}}))
   
    elif str_inp == '3':
        print('Вы выбрали удаление друга')
        youre_name_d = str(input('Ваше имя: '))
        new_name_d = str(input('Имя друга: '))
        # print(collection.remove({'name': youre_name_d } ,{ 'friends': {'name': new_name_d}}))
        return collection.update_one({'name': youre_name_d } , 
                                {'$unset':{ 'friends': [{'name': new_name_d}]}})
    elif str_inp =='4':
        print('Вы выбрали добавление поста')
        youre_name_p = str(input('Ваше имя: '))
        title_new = str(input('Тема: '))
        main_new = str(input('Сообщение: '))
        return collection.update_one({'name': youre_name_p } , 
                                {'$push':{ 'posts': [{'title':title_new,'main': main_new}]}})                                        

    elif str_inp == '5':
        print('Вы выбрали удаление поста')

        youre_name_post = str(input('Ваше имя: '))
        title_del = str(input('Название поста: '))
        main_del = str(input('Cодержание поста: '))
        # print(collection.remove({'name': youre_name_d } ,{ 'friends': {'name': new_name_d}}))
        return collection.update_one({'name': youre_name_post } , 
                                {'$unset':{ 'posts': [{'title': title_del, 'main': main_del}]}})

# change_info(collection)
################
# ins_result = collection.insert_many(users_all)  # до1бавляет несколько записей в коллекцию collection
# print(ins_result.inserted_ids)

####### Поиск имен
# for x in collection.find({},{"_id": 0, "nick": 0 ,'friends':0}):
#   print(x)

# for x in mycol.find({},{ "_id": 0, "name": 1, "address": 1 }):
#       print(x) 
############## Редактирование информации о пользователе#####################

# print(collection.replace_one({'name': 'PyL'}, {'name': 'NePyL'}))


def about_user(name):    
#■ ■ Просмотр информации о пользователе;
    for x in collection.find({'name':name}):
        print(f'О пользователе: {name}', x)
    # ■ ■ Просмотр всех друзей пользователя;    
    for x in collection.find({'name':name},{'friends': 1}):
        print('Друзья: ', x)

    # ■ ■ Просмотр всех постов пользователя.   
    for x in collection.find({'name':name},{ 'posts': 1}):
        print('Сообщения: ', x)

if __name__ == '__main__':
    db_client = pymongo.MongoClient("mongodb://localhost:27017/")  # MongoClient('localhost', 27017)
    # подключаемся к БД pyloungedb, если её нет, то будет создана
    current_db = db_client["basket_0508"]  # dictionary style
    # получаем колекцию из нашей БД, если её нет, то будет создана
    # Коллекция - это группа документов, которая хранится в БД MongoDB (эквалент таблицы в ркляционных базах)
    collection = current_db["basket_3"]
    
    # ■ ■ Создание базы;
    ins_result = collection.insert_many(users_all)  # до1бавляет несколько записей в коллекцию collection
    print(ins_result.inserted_ids)

    # ■ ■ Добавление пользователя;
    add_user_one(user_one)

    # ■ ■ Удаление пользователя;
    # ■ ■ Редактирование информации о пользователе;
    change_info(collection)
    
    # ■ ■ Поиск пользователя по ФИО;
    # ■ ■ Просмотр информации о пользователе;
    # ■ ■ Просмотр всех друзей пользователя;
    # ■ ■ Просмотр всех постов пользователя.
    about_user('PyL')




