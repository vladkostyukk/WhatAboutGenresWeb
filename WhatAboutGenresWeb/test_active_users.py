import unittest
from active_users import check_phone_number, check_login

class Test_active_user(unittest.TestCase):
    def test_phone_number_regex_with_assert_false(self):
        # Некорректные номера телефонов
        invalid_phone_numbers = [
            '',
            '1',
            '9216475737',
            '+79216475737',
            '+7 921 647 57 37',
            '+7 921 647-57-37',
            '8 (921) 647-57-37',
            '% (921) 647-57-37',
            '+7 (921) 647-5737',
            '+7 (921) 647 57 37',
            '+7 (777) 555-7890'
        ]
        
        for phone_number in invalid_phone_numbers:
            self.assertFalse(check_phone_number(phone_number), f"Expected {phone_number} to be invalid")

    def test_login_regex_with_assert_false(self):
        # Некорректные логины
        invalid_logins = [
            'Costa%',
            '',
            'gh',
            '¬ладислав*',
            'ab+fg',
            'JoHN_doe@123',
            'user123456789009',
            'admin-',
            'user%name',
            'test!123456',
            'customer service'
        ]
        
        for login in invalid_logins:
            self.assertFalse(check_login(login), f"Expected {login} to be invalid")

if __name__ == '__main__':
    unittest.main()