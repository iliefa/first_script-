*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Initiate Test Data
    Log  i am setting up test data

Begin web test
    Open Browser  ${START_URL}  ${BROWSER}
    Maximize Browser Window

End web test
    Close Browser

Close Test Data
    Log  i am closing all the test data
