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

    

