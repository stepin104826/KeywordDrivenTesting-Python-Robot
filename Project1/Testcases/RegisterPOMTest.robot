*** Settings ***
Library  SeleniumLibrary

Resource  ../ProjectResources/registerpageresources.robot

Suite Setup  Open Application
Suite Teardown  Close Application

*** Test Cases ***
TC for Registration Page
    set selenium speed  0.25 seconds
    Input firstname  Srikar Reddy
    Input lastname  Bussu
    Input Phone number  8973536453
    Input Email  srikarreddy651@gmail.com
    Input address  1400 Millersport Hwy
    Input city  Buffalo
    Input state  New York
    Input Postal Code  14221
    Select country  UNITED STATES
    Input username  srikarreddy651
    Input password  1234
    Input confirm password  1234
    Click Submit
    Close Application