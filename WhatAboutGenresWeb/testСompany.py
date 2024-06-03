import unittest
from company import check

class Test_test_company(unittest.TestCase):
    def testT(self):
        data = [['DFG', '12345678911', 'Крутой сайт'],
                ['ASD12','09876543211', 'Широко распространенный в СНГ'],
                ['weryy','11111111111', 'Наш постоянный партнер'],
                ['VbGh', '09090909091', 'Наши лучшие партнеры'],
                ['ddd', '33333333333', 'Самый крупный сервис']]
        for i in range(0,5):
            self.assertTrue(check(data[i][0],data[i][1],data[i][2]))
        
    def testF(self):
        data = [['q','12345678911', 'Крутой сайт'],
                ['1234','12345678911', 'Крутой сайт'],
                ['Awertyuiopkjhgfdsxcvbz','11111111111', 'Наш постоянный партнер'],
                ['weryy','11111111', 'Наш постоянный партнер'],
                ['weryy','33333a33333', 'Наш постоянный партнер'],
                ['VbGh', '09090909091', 'под'],
                ['VbGh', '09090909091', '123456789']]
        for i in range(0,7):
            self.assertFalse(check(data[i][0],data[i][1],data[i][2]))
        

if __name__ == '__main__':
    unittest.main()
