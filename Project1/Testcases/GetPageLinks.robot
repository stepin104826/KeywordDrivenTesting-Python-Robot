*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
LinksTC
    open browser  https://demo.guru99.com/test/newtours/  Chrome
    maximize browser window
    ${LinkCount}=  get element count  xpath://a   # This command returns the count of all elements with tag '//a' i.e., links
    log to console  ${LinkCount}

    @{LinkItems}=  create list
    FOR  ${i}  IN RANGE  1  ${LinkCount}+1
    ${linktext}=  get text  xpath:(//a)[${i}]     # This commands gets the text for the i th link
    log to console  ${linktext}
    END
    close browser