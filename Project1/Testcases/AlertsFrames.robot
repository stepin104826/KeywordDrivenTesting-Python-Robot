*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL1}  https://www.globalsqa.com/demo-site/frames-and-windows/
${URL2}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Test case for handling alerts and frames
    open browser  ${URL1}  ${Browser}
    set selenium speed  0.5 seconds
#    set selenium implicit wait  5 seconds

    click element  xpath://*[@id="iFrame"]
    select frame  globalSqa                           # Select a frame: select frame  <frame_name>
    input text  xpath://*[@id="s"]  Srikar Reddy
    unselect frame                                    # Unselect a frame: unselect frame
    select frame  globalSqa
    input text  xpath://*[@id="s"]  Basics
    unselect frame

    open browser  ${URL2}  ${Browser}
    set selenium implicit wait  15 seconds
    scroll element into view  css:#HTML9 > div:nth-child(2) > button:nth-child(1)
    click element  css:#HTML9 > div:nth-child(2) > button:nth-child(1)

    alert should be present  I am an alert box!  # verify the message on the alert
    handle alert  accept      # Accept the alert box

    close all browsers



*** Keywords ***
