*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
    Element Text Should Be  ${SIGNIN_MAIN_HEADING}  Sign In

Login with Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill Email Field  ${Username}
    Fill Password Field  ${Password}
    Click Submit Button
Fill Email Field
    [Arguments]  ${Username}
    Log  Filling email field with ${Username}

Fill Password Field
    [Arguments]  ${Password}
    Log  Filling password with ${Password}

Click Submit Button
    Log  Clicking submit button