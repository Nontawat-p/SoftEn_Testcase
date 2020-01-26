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

Success Register
    Input text    fullname    Somsri
    Input text    lastname    Sodsai
    Input text    phone    081-001-1234
    Click Button    registerButton    
    Location Should Be    ${SUCCESS URL}
    Wait Until Page Contains    Success
    Wait Until Page Contains    Thank you for your paticipation. We will call back to the winner



