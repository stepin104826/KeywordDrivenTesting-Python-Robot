*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://testautomationpractice.blogspot.com
${Browser}  Chrome

*** Test Cases ***
Testcase for testing HTML Tables
    open browser  ${URL}  ${Browser}
    maximize browser window

    ${no_of_rows}=  get element count  xpath://table[@name="BookTable"]/tbody/tr    # Count the rows in a table
    ${no_of_cols}=  get element count  //table[@name="BookTable"]/tbody/tr[1]/th    # Count the columns in a table
    log to console  ${no_of_rows}
    log to console  ${no_of_cols}

    ${text_data}=  get text  xpath://table[@name="BookTable"]/tbody/tr[3]/td[1]     # Get a cell data
    log to console  ${text_data}

    # table row should contain   <locator>  <row no.>  <row data>
    table row should contain  xpath://table[@name="BookTable"]  7  Javascript  # This command checks if "Javascript" is in row 7

    # table column should contain   <locator>  <column no.>  <column data>
    table column should contain  xpath://table[@name="BookTable"]  2  Author  # This command checks if "Author" is in column 2

    # table cell should contain   <locator>  <row no.> <col. no.> <cell data>
    table cell should contain   xpath://table[@name="BookTable"]  5  3  Selenium

    # table header should contain   <locator>  <header data>
    table header should contain  xpath://table[@name="BookTable"]  Price

    close browser