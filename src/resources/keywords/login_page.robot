*** Settings ***
Resource   ${VARIABLES_DIR}login_constants.robot

*** Keywords ***
Login Page Setup
    Run Keyword    Browser Is Launched

User is currently at Login page
    Title Should Be    Optimy login

User inputs ${email_value} as email address
    Set Test Variable    ${email}    ${email_value}
    Input Text    ${EMAIL_FIELD}    ${email_value}

User inputs ${password_value} as password
    Set Test Variable    ${password}    ${password_value}
    Input Text    ${PASSWORD_FIELD}    ${password_value}

Clicks the login button
    Click Element    ${LOGIN_BTN}

Verify the error message for email field is ${email_inline_error_value}
    Set Test Variable    ${email_inline_error_message}    ${email_inline_error_value}
    ${inline_error_present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${EMAIL_INLINE_ERROR}    10
    Run Keyword If    ${inline_error_present}    Element Text Should Be    ${EMAIL_INLINE_ERROR}    ${email_inline_error_value}

Verify the error message for password field is ${password_inline_error_value}
    Set Test Variable    ${password_inline_error_message}    ${password_inline_error_value}
    ${inline_error_present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${PASSWORD_INLINE_ERROR}    10
    Run Keyword If    ${inline_error_present}    Element Text Should Be    ${PASSWORD_INLINE_ERROR}    ${password_inline_error_value}

Verify the error message from server is ${server_error_value}
    Set Test Variable    ${server_error_message}    ${server_error_value}
    ${server_error_present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${SERVER_ERROR}    10
    Run Keyword If    ${server_error_present}    Element Text Should Be    ${SERVER_ERROR}    ${server_error_value}

Scenario: Login page negative test
    [Arguments]    ${email}    ${password}    ${email_inline_error_message}    ${password_inline_error_message}    ${server_error_message}
    Given User is currently at Login page
    When User inputs ${email} as email address
    And User inputs ${password} as password
    And Clicks the login button
    Then Verify the error message for email field is ${email_inline_error_message}
    And Verify the error message for password field is ${password_inline_error_message}
    And Verify the error message from server is ${server_error_message}
    Capture Page Screenshot