from bottle import post, request
from datetime import datetime
import re

@post('/company/add_comp', method='post')
def add_comp():
    data = request.json
    name = data['name']
    phone = data['phone']
    desc = data['desc']
    with open('static/company/company_list.txt', 'r') as f:
        data_t = f.read()
    if (check(name, phone, desc)):
        phone = phone[0]+'('+phone[1:4]+')'+phone[4:7]+'-'+phone[7:9]+'-'+phone[9:]
        f = open('static/company/company_list.txt', 'w')
        f.write(data_t+'\n'+name+'\n'+phone+'\n'+desc)
        f.close()
     
        return {'val':True}
    else:
        return {'val':False}

def check(name, phone, desc):
    if len(name)<3 or len(phone)!=11 or len(desc)<8 or (not phone.isdigit()):
        return False
    elif not any(char.isalpha() for char in name) or not any(char.isalpha() for char in desc):
        return False
    elif len(name)>20 or len(desc)>40:
        return False
    else:
        return True