*** Settings ***
Documentation    This test suite contains all the negative test scenarios of login page
Library          OperatingSystem
Library          Selenium2Library
Test Setup       Login Page Setup
Test Teardown    Close All Browsers
Resource         ${CURDIR}/../../common/config.robot
Resource         ${KEYWORDS_DIR}login_page.robot

*** Test Cases ***
Scenario: Login page negative test
    [Template]    Scenario: Login page negative test

    # Email             Password    Email Inline Error Message                                          Password Inline Error Message       Server Side Error Message
    ${EMPTY}            ${EMPTY}    This field is required.                                             This field is required.             ${EMPTY}
    valid@format.com    ${EMPTY}    ${EMPTY}                                                            This field is required.             ${EMPTY}
    ${EMPTY}            pass123     This field is required.                                             ${EMPTY}                            ${EMPTY}
    invalidemail.com    ${EMPTY}    Please enter a valid email address (e.g.: john.smith@gmail.com).    This field is required.             ${EMPTY}
    test@optimy.com     pass123     ${EMPTY}                                                            ${EMPTY}                            The email address or password is incorrect.