*** Settings ***
Library  SeleniumLibrary
Resource  C:/Users/srika/Automation/RobotFramework/Project1/ProjectResources/loginresources.robot
Suite Setup  Open Application   # Setup step through keywords
Suite Teardown  Close Application  # Teardown step through keywords
Test Template  Invalid Login

*** Test Cases ***  inp1  inp2
Test1  admin@yourstore.com  ${EMPTY}    # Valid username and empty password
Test2  ssjkbfsjdg  mnfef                # Both invalid
Test3  ${EMPTY}  admin                  # Empty username and empty password
Test4  ${EMPTY}  ${EMPTY}               # Both empty

*** Keywords ***
Invalid Login
    set selenium speed  0.5 seconds
    Verify Page Elements
    [Arguments]  ${username}  ${password}
    Input Username  ${username}
    Input Password  ${password}
    Click Login Button
    Error message should be visible
