import json
import re
from bottle import post, request

# ������� ��� �������� ������������ email
def check_email(email):
    pattern = r'^[a-zA-Z0-9][a-zA-Z0-9_.-]{2,29}[a-zA-Z0-9]@[a-zA-Z0-9]{2,8}(\.[a-zA-Z0-9]{2,4}){1,3}$'
    return bool(re.match(pattern, email))

# ������� ��� �������� ������������ ������ �������� � ������� +7 (XXX) XXX-XX-XX
def check_phone_number(phone_number):
    pattern = r'^\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}$'
    return bool(re.match(pattern, phone_number))

# ������� ��� �������� ������������ ������
def check_login(login):
    pattern = r'^[a-zA-Z�-��-�0-9_]{3,15}$'
    return bool(re.match(pattern, login))

# ��� ��� ��������� POST-�������
@post('/active_users', method='POST')  
def post_data():
    # ��������� ������ �� ����� �����: �����, ����������� �����, ����� ��������, �����
    login = request.forms.get('login')
    email = request.forms.get('email')
    phone_number = request.forms.get('phoneNumber')
    text = request.forms.get('text')
 
    # �������� ������������ ��������� ����������� �����
    if not check_email(email):
        return {'response': '����������, ������� ���������� ����� ����������� �����!'}
    
    # �������� ������������ ���������� ������ ��������
    if not check_phone_number(phone_number):
        return {'response': '����������, ������� ���������� ����� ��������!'}

    # �������� ������������ ���������� ������
    if not check_login(login):
        return {'response': '����������, ������� ���������� �����!'}

    # �������� ������� � ������� �����
    data = {
        'login': login,
        'email': email,
        'phone_number': phone_number,
        'text': text
    }

    # ���������� ������ ����� � ������� ����������
    return {'response': save_form_data(data)}

# ������� ���������� ������ � JSON-����
def save_form_data(new_data):
    try:
        # �������� ������� ���� active_users.json ��� ������ ������
        with open('active_users.json', 'r', encoding='utf-8') as file:
            data = json.load(file)
    except FileNotFoundError:
        # ���� ���� �� ������ ��� ������, �������������� ������ ������
        data = []

    # ��������� ������ �� ����� �����
    login = new_data['login']
    email = new_data['email']
    phone_number = new_data['phone_number']
    text = new_data['text']

    # ��������� ������������ ������ � ������ ������
    for entry in data:
        # ���� ������ ������������ � ����� �� ����������� ������, ������� �������� � �������
        if entry['email'] == email and entry['phoneNumber'] == phone_number and entry['login'] == login:
            if text in entry['messages']:
                return '����� ��������� ��� ���������!'
            # ��������� ����� ��������� � ������������ ������� ������������
            entry['messages'].append(text)
            break

        # ��������� ������� ���������� �� ����������� ����� ��� ������ ��������
        if entry['email'] == email or entry['phoneNumber'] == phone_number:
            return '���� email ��� ����� �������� ��� ����������� ������ ���������!'

        # ��������� ������� ��������� ������
        if entry['login'] == login:
            return '����� ��� �����!'

    else:
        # ���� �� ���� ������� ����������, ��������� ����� ������
        data.append({
            'email': email,
            'login': login,
            'phoneNumber': phone_number,
            'messages': [text]
        })

    # ���������� ����������� ������ � ���� active_users.json
    with open('active_users.json', 'w', encoding='utf-8') as file:
        json.dump(data, file, ensure_ascii=False, indent=4)

    return '������� �� ���� ���������!'

