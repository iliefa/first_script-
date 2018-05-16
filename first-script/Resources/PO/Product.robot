*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to

Add to Cart
    Click Button  Add to Cart

Waiting
    wait until Page Contains  Added to Cart