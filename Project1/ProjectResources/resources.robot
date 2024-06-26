# This file contains are the resources that can be shared among the project files.
*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
LaunchBrowser
    [Arguments]  ${inp1}  ${inp2}    # Arguments for the keyword
    open browser  ${inp1}  ${inp2}
    maximize browser window
    ${pageTitle}=  get title
    [Return]  ${pageTitle}           # Return a value