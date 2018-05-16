*** Settings ***

Documentation  these are some api tests

Resource  ../Resources/API/Github.robot

*** Variables ***

*** Test Cases ***

Make a simple rest api call
    [tags]  API1
    Check github username

display emoji from github
    [tags]  API
    Display emoji

