*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser

*** Variables ***
${URL}=        http://localhost:3000
${BROWSER}=    chrome


*** Keywords ***
user clears element text
    [Arguments]    ${selector}
    Click Element    ${selector}
    user presses keys    ${selector}    COMMAND+a+BACKSPACE
    # Sleep  1000
    sleep    0.3
    Log To Console   element should be cleared now but isn't 
    Sleep  10000


user presses keys
    [Arguments]    @{keys}
    press keys    ${NONE}    @{keys}    # No selector as sometimes leads to text not being input
    sleep    0.1

*** Test Cases ***
Try to clear text
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    user clears element text  //*[@id="text"]
