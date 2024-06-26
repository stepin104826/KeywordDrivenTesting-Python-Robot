*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Test case to test page waits and timeouts
    open browser  ${URL}  ${Browser}
    maximize browser window

    ${Speed}=  get selenium speed  # Get default selenium speed or the speed at which each statement executes. By default, 0 seconds.
    log to console  ${Speed}  # Print the default speed to the console

    set selenium speed  1 second  # Set the wait time between statement execution to 2 seconds. Scope of this command is the entire program.

    ${WaitTime}=  get selenium implicit wait  # Get the default implicit wait time. By default, 0 seconds.
    log to console  ${WaitTime}
    set selenium implicit wait  5 seconds  # This command waits for 5 secs for an element to show up on the page. Scope of this command is the entire program.

    select radio button  Gender  M
    input text  id:FirstName  Srikar Reddy
    input text  id:LastName  Bussu
    input text  css:#Email  srikarreddy651@gmail.com
    input text  css:#Password  srik123
    input text  xpath://*[@id="ConfirmPassword"]  srik123
    click button  css:#register-button

    set selenium timeout  5 seconds   # This command waits for a specified time for a particular condition to be true.
    wait until page contains  The specified email already exists  # The condition for wait.

    close browser

*** Keywords ***




*** Keywords ***
