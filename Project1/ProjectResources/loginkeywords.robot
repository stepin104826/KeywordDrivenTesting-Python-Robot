*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/LoginPageElements.py

*** Variables ***
${SiteURL}  https://demo.guru99.com/test/newtours/
${Browser}  Chrome

*** Keywords ***
Open Application
    open browser  ${SiteURL}  ${Browser}
    maximize browser window

Enter Username
    [Arguments]  ${username}
    input text  ${username_txt}  ${username}

Enter Password
    [Arguments]  ${password}
    input text  ${password_txt}  ${password}

Click Sign in
    click button  ${submit_button}

Verify successful login
    title should be  Welcome: Mercury Tours

Close Application
    close all browsers