*** Settings ***
Documentation          
Library                SeleniumLibrary
Library    XML
Test Setup             Open Browser        ${webURL}        ${BROWSERS}
Test Teardown          Close All Browsers

*** Variables ***
${BROWSERS}                chrome
${webURL}                  http://uitestingplayground.com/textinput

*** Test Cases ***
I type valid my name (Havid) in the field
    Maximize Browser Window
    Input Text                  id:newButtonName        Havid
    Click Button                id:updatingButton
    Sleep                       3
    Element Should Contain      id:updatingButton       Havid

I type valid my name (Tester) in the field
    Maximize Browser Window
    Input Text                  id:newButtonName        Tester
    Click Button                id:updatingButton
    Sleep                       3
    Element Text Should Be      id:updatingButton       Tester

I type valid my name (Bootcamp) in the field
    Maximize Browser Window
    Input Text                  id:newButtonName        Bootcamp
    Click Button                id:updatingButton
    Sleep                       3
    Element Should Contain      id:updatingButton       Bootcamp

