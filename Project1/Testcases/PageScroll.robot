*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
PageScrollTest
    open browser  https://www.countries-ofthe-world.com/flags-of-the-world.html  Chrome
    maximize browser window
    set selenium speed  0.75 seconds
    set selenium timeout  10 seconds
    wait until page contains  Country flags of the world

    execute javascript  window.scrollTo(0,1000)   # This javascript command scrolls down the page horizontally by 0 pixels and vertically by 1500 pixels
    capture page screenshot  E:/Automation/Robot Framework/Project1/Screenshots/PageScroll1.png

    scroll element into view  xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    capture page screenshot  E:/Automation/Robot Framework/Project1/Screenshots/PageScroll2.png

    execute javascript  window.scrollTo(0,document.body.scrollHeight)  # This javascript command scrolls till the end of the page.
    capture page screenshot  E:/Automation/Robot Framework/Project1/Screenshots/PageScroll3.png

    execute javascript  window.scrollTo(0,-document.body.scrollHeight)  # Scrolls back to the start of the page
    capture page screenshot  E:/Automation/Robot Framework/Project1/Screenshots/PageScroll4.png