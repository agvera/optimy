*** Variables ***
${EMAIL_FIELD}              //input[contains(@class, 'email') and @autocomplete='on']
${PASSWORD_FIELD}           //input[@type='password']
${LOGIN_BTN}                //button[contains(text(), 'Login')]
${EMAIL_INLINE_ERROR}       //span[@for='email']
${PASSWORD_INLINE_ERROR}    //span[@for='password']
${SERVER_ERROR}             //div[(contains(@class, 'alert-optimy-error') and not(contains(@class, 'hidden')))]