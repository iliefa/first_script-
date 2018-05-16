*** Settings ***
Library  SeleniumLibrary
Documentation  this is the test for built-in

*** Variables ***

${GLOBAL1} =  I am global variable 1
${SOME_GLOBAL_2}
*** Test Cases ***

Declare and set variables
    ${some_test_data} =  set variable  this is only available within this test
    set test variable  ${more_test_data}  this is also only available within this test

    set suite variable  ${some_suite_data}  this is available within all tests inside the suite

    set global variable  ${SOME_GLOBAL_2}  this is available everywhere

Logging stuff
    [Tags]  Builtin
    Comment  ${GLOBAL1}
    Log Many  something to say  more to say  bla bla
    log to console  just in the console can be seen
    log variables

Ignore failures in this test
    [Tags]  Builtin
    Open browser  http://amazon.com  firefox
    run keyword and continue on failure  Wait until page contains  this test does not exist
    run keyword and continue on failure  Wait until page contains  this test also does not exist
    log variables

Repeat stuff
    [Tags]  repeat
    repeat keyword  3 times  say something funny

*** Keywords ***
Say something funny
    Log  bla bla bla

