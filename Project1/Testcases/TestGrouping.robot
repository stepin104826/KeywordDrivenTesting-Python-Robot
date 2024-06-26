*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
# We can use the '--include' or '-i' and '--exclude' or '-e' flags to include and exclude test groups based on tags.
TC1 User Registration Test
    [Tags]  Sanity
    log to console  This is user reg test
    log to console  User reg. test is over

TC2 Login Test
    [Tags]  Smoke
    log to console  This is login test
    log to console  Login Test is over

TC3 Change user settings
    [Tags]  Regression
    log to console  This is changing user settings test
    log to console  Change user settings test is over

TC4 Logout Test
    [Tags]  Smoke
    log to console  This is login test
    log to console  User login is over
