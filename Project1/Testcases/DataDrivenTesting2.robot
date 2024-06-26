*** Settings ***
Library  SeleniumLibrary
Library  DataDriver  ../TestData/LoginData.xlsx  sheet_name=Sheet1

Resource  C:/Users/srika/Automation/RobotFramework/Project1/ProjectResources/loginresources.robot

Suite Setup  Open Application
Suite Teardown  Close Application

Test Template  Invalid Login

*** Test Cases ***
Data driven TC with Excel data using ${inp1} and ${inp2}

*** Keywords ***
Invalid Login
    Set Execution Speed
    Verify Page Elements
    [Arguments]  ${inp1}  ${inp2}
    Input Username  ${inp1}
    Input Password  ${inp2}
    Click Login Button
    Error message should be visible