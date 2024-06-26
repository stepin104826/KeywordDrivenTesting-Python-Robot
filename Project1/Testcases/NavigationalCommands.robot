*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.youtube.com/
${Browser}  Chrome


*** Test Cases ***
Test case for navigation commands
    open browser  ${URL}  ${Browser}
    ${loc}=  get location    # Returns the URL/location of the current browser
    log to console  ${loc}

    go to  https://www.google.com/   # Goes to the specified URL
    ${loc}=  get location
    log to console  ${loc}

    go back    # Goes back to the previous URL
    ${loc}=  get location
    log to console  ${loc}

    close browser
