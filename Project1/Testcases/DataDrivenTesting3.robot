*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  ../TestData/LoginData.csv

Resource  C:/Users/srika/Automation/RobotFramework/Project1/ProjectResources/loginresources.robot

Suite Setup  Open Application
Suite Teardown  Close Application

Test Template  Invalid Login
*** Test Cases ***
Data-driven TC with CSV data using ${u}  ${p}


*** Keywords ***
Invalid Login
    Set Execution Speed
    [Arguments]  ${u}  ${p}
    Input Username  ${u}
    Input Password  ${p}
    Click Login Button
    Error message should be visible
