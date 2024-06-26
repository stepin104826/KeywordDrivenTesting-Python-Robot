*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/RegisterPageElements.py

*** Variables ***
${URL}  https://demo.guru99.com/test/newtours/register.php
${Browser}  Chrome

*** Keywords ***
Open Application
    open browser  ${URL}  ${browser}
    maximize browser window

Input firstname
    [Arguments]  ${firstname}
    input text  ${f_name}  ${firstname}

Input lastname
    [Arguments]  ${lastname}
    input text  ${l_name}  ${lastname}

Input Phone number
    [Arguments]  ${no}
    input text  ${phone}  ${no}

Input Email
    [Arguments]  ${inp}
    input text  ${email}  ${inp}

Input address
    [Arguments]  ${inp}
    input text  ${address}  ${inp}

Input city
    [Arguments]  ${inp}
    input text  ${city}  ${inp}

Input state
    [Arguments]  ${inp}
    input text  ${state}  ${inp}

Input Postal Code
    [Arguments]  ${inp}
    input text  ${p_code}  ${inp}

Select country
    [Arguments]  ${inp}
    select from list by value  ${country}  ${inp}

Input username
    [Arguments]  ${inp}
    input text  ${username}  ${inp}

Input password
    [Arguments]  ${inp}
    input text  ${password}  ${inp}

Input confirm password
    [Arguments]  ${inp}
    input text  ${confirmpassword}  ${inp}

Click Submit
    click element  ${submit}

Verify Registration
    page should contain  Thank you for registering

Close Application
    close all browsers
