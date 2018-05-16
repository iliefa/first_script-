*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***

Verify Search Completed
    Wait until Page Contains  results for "${SEARCH_TERM}"  timeout=10

Click Product Link
    Click Link  css=#result_3 a.s-access-detail-page