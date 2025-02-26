from selenium import webdriver

# ไม่จำเป็นต้องระบุตำแหน่ง chromedriver ถ้าอยู่ใน PATH
driver = webdriver.Chrome()

driver.get('https://www.google.com')
# print(driver.title)
# driver.quit()
