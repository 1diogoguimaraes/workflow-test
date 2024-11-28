*** Settings ***
Documentation       Sessions to check is Login is working
Library     RequestsLibrary
*** Variables ***

*** Test Cases ***
Get Request Test
    Create Session    google    http://www.google.com
    ${resp_google}=   GET On Session    google    /    expected_status=200
    Log To Console    ${resp_google.reason}