*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ForLoopTC1
    FOR  ${i}  IN RANGE  1  10
    log to console  ${i}
    END

ForLoopTC2
    FOR  ${i}  IN  1 2 3 4 5 6         # Prints in a single line
    log to console  ${i}
    END

    FOR  ${i}  IN  1  2  3  4  5  6    # Prints in seperates line
    log to console  ${i}
    END

ForLoopTC3
    @{items}=  create list  1  2  3  4  5    # List variables start with @ instead of $
    FOR  ${i}  IN  @{items}
    log to console  ${i}
    END

ForLoopTC4
    FOR  ${i}  IN  Srikar  John  David  Smith
    log to console  ${i}
    END

ForLoopTC5
    @{list}=  create list  5  Srikar  8.24
    FOR  ${ele}  IN  @{list}
    log to console  ${ele}
    END

ForLoopTC6
    @{list}=  create list  1  2  3  4  5  6
    FOR  ${ele}  IN  @{list}
    exit for loop if  ${ele}==3    # This command exits the for-loop when the condition is true
    log to console  ${ele}
    END
