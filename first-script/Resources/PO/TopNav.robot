*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${TOP_NAV_SEARCH_BAR} =  id=twotabsearchtextbox

*** Keywords ***

Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${TOP_NAV_SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    Press key  ${TOP_NAV_SEARCH_BAR}  \\13