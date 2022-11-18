Library    OperatingSystem
Library    SeleniumLibrary

Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser

*** Variables ***
${URL}        http://localhost:3000
${BROWSER}    chrome





*** Test Cases ***

Try to clear text
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

*** Keywords ***
