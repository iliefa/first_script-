*** Settings ***

Documentation  This is some basic info about the whole suite
Library  Dialogs

Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup     Initiate Test Data
Suite Teardown  Close Test Data

Test Setup     Begin web test
Test Teardown  End web test


*** Variables ***
${START_URL} =  http://amazon.com
${BROWSER} =  firefox
${SEARCH_TERM} =  Dacia
${LOGIN_EMAIL} =  anil@gmail.com
${LOGIN_PASSWORD} =  mypassword1


*** Test Cases ***

#Login
  #  SignIn.Login with Valid Credentials
User can search for products
    [Documentation]  This is some basic info about second test
    [Tags]  Simple
    ${new_browser} =  get selection from user  Which browser?  chrome  ie  firefox
    set global variable  ${BROWSER}  ${new_browser}
    AmazonApp.Search for products

User must sign in to check out
    [Documentation]  This is some basic info about the first test
    [Tags]  Smoke
    AmazonApp.Search for products
    execute manual step  Do something!  It failed!
    AmazonApp.Select product
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout




