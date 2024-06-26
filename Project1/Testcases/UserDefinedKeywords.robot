*** Settings ***
Library  SeleniumLibrary
Resource  ../ProjectResources/resources.robot   # We are calling the 'resources.robot' file where the User-defined Keywords are stored.

*** Variables ***
${URL}  https://demo.guru99.com/test/newtours/
${Browser}  Chrome

*** Test Cases ***
TC1
    ${Title}=  LaunchBrowser  ${URL}  ${Browser}    # This is a user defined keyword with arguments and return value in the defined in the 'Keywords' section
    log to console  ${Title}              # Print the value returned by the keyword
    log  ${Title}      # Logs the value to the html report generated
    input text  name:userName  mercury
    input text  name:password  mercury


*** Keywords ***

