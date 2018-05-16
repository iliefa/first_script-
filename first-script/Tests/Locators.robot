*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Should be able to search for product
    Open Browser  http://amazon.com  firefox
    Maximize Browser Window
    Sleep  3s
    Click Image  Devices and Electronics

Test case 2
    Log  i am test case 2
*** Keywords ***
