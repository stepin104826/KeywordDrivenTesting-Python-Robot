*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  headlesschrome
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
Test Radio Buttons and Check Boxes
    open browser  ${URL}  ${Browser}
    maximize browser window
    set selenium speed  2 seconds    # Wait for 2 seconds after executing each statement
    click element  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a

    # Find and scroll to the radio button element
    ${radio_button_element}  set variable  id:gender-male
    scroll element into view  ${radio_button_element}

    # Select radio button
    select radio button  Gender  M    # select radio button  <element_name>  <element_value>

    # Find and scroll to the checkbox element
    ${checkbox_element}  set variable  id:Newsletter
    scroll element into view  ${checkbox_element}

    # Select and unselect checkbox
    select checkbox  Newsletter  # select checkbox  <element_name>
    unselect checkbox  Newsletter

    close browser
