*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  Edge
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
RegisterTest
#    create webdriver    Chrome  executable_path="C:\WebDrivers\chromedriver_win32\chromedriver.exe"
    open browser  ${URL}  ${browser}
    RegisterToApplication
    close browser

*** Keywords ***
RegisterToApplication
    click element   xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    input text   id:FirstName  Srikar Reddy
    input text  id:LastName  Bussu
    click element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[1]/div[2]/div[4]/div/select[1]/option[18]
    click element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[1]/div[2]/div[4]/div/select[2]/option[9]
    click element   xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[1]/div[2]/div[4]/div/select[3]/option[86]
    input text  id:Email  srikarreddy651@gmail.com
    input text  id:Password  srik123
    input text  id:ConfirmPassword  srik123
    click button    id:register-button


