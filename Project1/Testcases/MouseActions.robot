*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://swisnl.github.io/jQuery-contextMenu/demo.html

*** Test Cases ***
MouseAction Testcases
    open browser  ${URL}  ${Browser}
    maximize browser window

    open context menu  xpath://*[@class="context-menu-one btn btn-neutral"]   # This command performs right click on the given element
    sleep  3

    go to  https://testautomationpractice.blogspot.com/
    # To perform double click on the element
    double click element  xpath://*[@ondblclick="myFunction1()"]
    sleep  3

    go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-1.html
    drag and drop  id:box1  id:dropBox  # drag and drop  <source element>  <target element>

    close all browsers

