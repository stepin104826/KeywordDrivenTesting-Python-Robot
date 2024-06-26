*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
LoginTC
    open browser  ${URL}  ${Browser}
    maximize browser window
    input text  xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input  admin
    input text  xpath:/html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input  admin123

    # Takes the screenshot of the element
    capture element screenshot  xpath:/html/body/div/div[1]/div/div[1]/div/div[1]/img  E:/Automation/Robot Framework/Project1/element_SS.png

    # Take the entire page screenshot
    capture page screenshot  E:/Automation/Robot Framework/Project1/page_SS.png

    close browser