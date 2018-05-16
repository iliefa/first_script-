#import  urllib3
#urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
*** Settings ***

Library  RequestsLibrary
Library  SeleniumLibrary
#Library  RequestsLibrary

*** Variables ***

*** Keywords ***

Check github username
    #create the session
    Create Session  my_github_session  https://api.github.com

    #make the call and capture the response in a *** variables ***
    ${response} =  Get Request  my_github_session  /users/robotframeworktutorial

    #check response status
    should be equal as strings  ${response.status_code}  200

    #check response body
    ${json} =  Set Variable  ${response.json()}
    should be equal as strings  ${json['location']}  Southern California
    Log  ${json}

Display Emoji

    Create Session  my_github_session  https://api.github.com

    #make the call and capture the response in a variable
    ${response} =  Get Request  my_github_session  emojis

    #check response

    should be equal as strings  ${response.status_code}  200

    #check response body
    ${json} =  Set Variable  ${response.json()}
    ${emoji_url} =  set variable  ${ json['aerial_tramway']}
    ${emoji_romania} =  set variable  ${json['romania']}
    Open Browser  ${emoji_url}  firefox
    Close Browser
    Open Browser  ${emoji_romania}  firefox
    Close Browser
