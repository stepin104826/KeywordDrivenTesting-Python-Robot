*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
TestInputBox
    open browser  ${URL}  ${Browser}
    maximize browser window
    title should be  nopCommerce demo store
    click element  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${email_txt}=  set variable  id:Email

    element should be visible  ${email_txt}
    element should be enabled  ${email_txt}

    input text  ${email_txt}  srikarreddy651@gmail.com
    sleep  5
    clear element text  ${email_txt}
    sleep  5

    close browser