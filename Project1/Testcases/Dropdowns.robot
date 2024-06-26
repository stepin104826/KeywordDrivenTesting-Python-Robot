*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Edge
${URL1}  https://demo.nopcommerce.com/
${URL2}  https://www.techlistic.com/p/selenium-practice-form.html
${register_button}  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a

*** Test Cases ***
Handling Dropdowns and listboxes
    open browser  ${URL1}  ${Browser}
    maximize browser window
    set selenium speed  0.1 seconds

    click element  ${register_button}
    element text should be  ${register_button}  Register  "Check if the element text is 'Register'"

    # Select single values from dropdown
    select from list by value  DateOfBirthDay  17   # select from list by value  <dropdownelement_name>  <value>
    select from list by index  DateOfBirthMonth  8  # select from list by index  <dropdownelement_name>  <index>
    select from list by label  DateOfBirthYear  1998  # select from list by label  <dropdownelement_name>  <label>

    # Navigate to URL2
    go to  ${URL2}

    # Select and unselect multiple values from listbox
    select from list by label  id:selenium_commands  Switch Commands
    select from list by label  id:selenium_commands  Browser Commands
    unselect from list by label  id:selenium_commands  Switch Commands
    unselect from list by label  id:selenium_commands  Browser Commands

    # Select and unselect all values from the listbox
    select all from list  id:selenium_commands
    unselect all from list  id:selenium_commands

    close browser





