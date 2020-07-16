*** Settings ***
Library    OperatingSystem
Library    Selenium2Library
Library    BuiltIn

*** Variables ***
${BROWSER}          firefox
${LOGIN_URL}        https://login.optimyapp.com/
${KEYWORDS_DIR}     ${CURDIR}/../src/resources/keywords/
${VARIABLES_DIR}    ${CURDIR}/../src/resources/variables/

*** Keywords ***
Browser Is Launched
    Open Browser          ${LOGIN_URL}    ${BROWSER}
    Set Selenium Speed    .5
    Set Window Size       1024            800