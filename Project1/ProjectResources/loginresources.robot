*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LoginURL}  https://admin-demo.nopcommerce.com/
${Browser}  Chrome

*** Keywords ***
Open Application
    open browser  ${LoginURL}  ${Browser}
    maximize browser window

Set Execution Speed
    set selenium speed  0.5 seconds

Close Application
    close all browsers

Open Login Page
    go to  ${LoginURL}

Input Username
    [Arguments]  ${username}
    input text  id:Email  ${username}

Input Password
    [Arguments]  ${pass}
    input text  id:Password  ${pass}

Click Login Button
    click element  xpath://*[@class="button-1 login-button"]

Click Logout
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful.

Verify Page Elements
    page should contain element  xpath://*[@class="button-1 login-button"]
    page should contain element  id:Email
    page should contain element  id:Password

Dashboard page should be visible
    page should contain  Dashboard

