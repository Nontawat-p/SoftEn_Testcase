*** Settings ***
Library    SeleniumLibrary

**** Variables ***
${SERVER}    localhost:7272
${LUCKY URL}    http://${SERVER}/Sec01/EventConfirmation.html
${SUCCESS URL}    http://${SERVER}/Sec01/Success.html
${BROWSER}    Chrome

*** Test Cases ***
Open Lucky Draw Registration
    Open Browser    ${LUCKY URL}    ${BROWSER}
    Location Should Be    ${LUCKY URL} 

Empty FN
    Input text    lastname    Sodsai
    Input text    phone    081-001-1234
    Click Button    registerButton    
    Location Should Be    ${LUCKY URL}
    Wait Until Page Contains    Plese enter your first name!!