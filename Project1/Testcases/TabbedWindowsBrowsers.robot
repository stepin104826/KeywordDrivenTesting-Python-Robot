*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://demo.automationtesting.in/Windows.html
${Browser}  Chrome

*** Test Cases ***
Test Case for handling tabbed windows
    open browser  ${URL}  ${Browser}
    maximize browser window
    set selenium speed  0.5 seconds
    click element  xpath:/html/body/div[1]/div/div/div/div[2]/div[1]/a/button

    switch window  title=Selenium    # This command selects/switches to a window with title "Selenium".
    click element  xpath:/html/body/header/nav/div/ul/li[3]/a
    sleep  3

    close all browsers

Test Case for handling multiple browsers
    open browser  https://www.google.com/  ${Browser}     # Browser index 1
    maximize browser window

    sleep  3

    open browser  https://www.bing.com/  ${Browser}       # Browser index 2
    maximize browser window

    switch browser  1   # This command switches to the browser with index 1: switch browser  <index_number>
    ${pagetitle1}=  get title
    log to console  ${pagetitle1}

    switch browser  2   # This command switches to the browser with index 2
    ${pagetitle2}=  get title
    log to console  ${pagetitle2}

    sleep  3
    close all browsers