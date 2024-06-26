*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  ../TestData/LoginPOMData.xlsx  sheet_name=Sheet1

Resource  ../ProjectResources/loginkeywords.robot

Suite Setup  Open Application
Suite Teardown  Close Application

Test Template  Login POM Test

*** Test Cases ***
TC for Login POM Data-driven testing using ${user} ${pass}

*** Keywords ***
Login POM Test
    set selenium speed  0.5 seconds
    [Arguments]  ${user}  ${pass}
    Enter Username  ${user}
    Enter Password  ${pass}
    Click Sign in
    Verify successful login
