*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***

Load
    Go To  ${START_URL}

Verify Page Loaded
    pause execution
    Wait until Page Contains  amazon.com