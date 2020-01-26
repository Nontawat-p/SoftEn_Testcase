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

Invalid Phone Number
    Input text    fullname    Somsri
    Input text    lastname    Sodsai
    Input text    phone    1234
    Click Button    registerButton    
    Location Should Be    ${LUCKY URL}
    Wait Until Page Contains    Plese enter a valid phon number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678