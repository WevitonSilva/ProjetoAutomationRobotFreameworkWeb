from selenium import webdriver

class TestBase:

    def __init__(self):
        driver_path = ".\chromedriver.exe"
        self.driver = webdriver.Chrome(executable_path=driver_path)

    def abrir_Navegador(self, site):
        self.driver.get(site)
        self.driver.maximize_window  

    def fechar_Navegador(self):
        self.driver.close

    def clicar(self, locator):
        self.driver.find_element(locator).click()

    def escrever(self, locator, text):
        self.driver.find_element(locator).send_keys(text)
    