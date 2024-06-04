import json
import re
from bottle import post, request

# Функция для проверки корректности email
def check_email(email):
    pattern = r'^[a-zA-Z0-9][a-zA-Z0-9_.-]{2,29}[a-zA-Z0-9]@[a-zA-Z0-9]{2,8}(\.[a-zA-Z0-9]{2,4}){1,3}$'
    return bool(re.match(pattern, email))

# Функция для проверки корректности номера телефона в формате +7 (XXX) XXX-XX-XX
def check_phone_number(phone_number):
    pattern = r'^\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}$'
    return bool(re.match(pattern, phone_number))

# Функция для проверки корректности логина
def check_login(login):
    pattern = r'^[a-zA-Zа-яА-Я0-9_]{3,15}$'
    return bool(re.match(pattern, login))

# Код для обработки POST-запроса
@post('/active_users', method='POST')  
def post_data():
    # Получение данных из полей формы: логин, электронная почта, номер телефона, текст
    login = request.forms.get('login')
    email = request.forms.get('email')
    phone_number = request.forms.get('phoneNumber')
    text = request.forms.get('text')
 
    # Проверка корректности указанной электронной почты
    if not check_email(email):
        return {'response': 'Пожалуйста, укажите корректный адрес электронной почты!'}
    
    # Проверка корректности указанного номера телефона
    if not check_phone_number(phone_number):
        return {'response': 'Пожалуйста, укажите корректный номер телефона!'}

    # Проверка корректности указанного логина
    if not check_login(login):
        return {'response': 'Пожалуйста, укажите корректный логин!'}

    # Создание словаря с данными формы
    data = {
        'login': login,
        'email': email,
        'phone_number': phone_number,
        'text': text
    }

    # Сохранение данных формы и возврат результата
    return {'response': save_form_data(data)}

# Функция сохранения данных в JSON-файл
def save_form_data(new_data):
    try:
        # Пытаемся открыть файл active_users.json для чтения данных
        with open('active_users.json', 'r', encoding='utf-8') as file:
            data = json.load(file)
    except FileNotFoundError:
        # Если файл не найден или пустой, инициализируем пустой список
        data = []

    # Извлекаем данные из новой формы
    login = new_data['login']
    email = new_data['email']
    phone_number = new_data['phone_number']
    text = new_data['text']

    # Проверяем существующие записи в файлах данных
    for entry in data:
        # Если найден пользователь с такой же электронной почтой, номером телефона и логином
        if entry['email'] == email and entry['phoneNumber'] == phone_number and entry['login'] == login:
            if text in entry['messages']:
                return 'Такое сообщение уже добавлено!'
            # Добавляем новое сообщение в существующий профиль пользователя
            entry['messages'].append(text)
            break

        # Проверяем наличие дубликатов по электронной почте или номеру телефона
        if entry['email'] == email or entry['phoneNumber'] == phone_number:
            return 'Этот email или номер телефона уже использован другим аккаунтом!'

        # Проверяем наличие дубликата логина
        if entry['login'] == login:
            return 'Логин уже занят!'

    else:
        # Если не было найдено совпадений, добавляем новую запись
        data.append({
            'email': email,
            'login': login,
            'phoneNumber': phone_number,
            'messages': [text]
        })

    # Записываем обновленные данные в файл active_users.json
    with open('active_users.json', 'w', encoding='utf-8') as file:
        json.dump(data, file, ensure_ascii=False, indent=4)

    return 'Спасибо за ваше сообщение!'

