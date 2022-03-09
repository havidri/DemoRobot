*** Settings ***
Documentation          
Library                SeleniumLibrary
Test Setup             Open Browser        ${webURL}        ${BROWSERS}
Test Teardown          Close All Browsers

*** Variables ***
${BROWSERS}                chrome
${webURL}                  https://demoqa.com/radio-button

*** Test Cases ***
Klik Radio Button Yes
    Maximize Browser Window
    Click Element                //label[contains(text(),'Yes')]
    Element Should Be Visible    //span[contains(text(),'Yes')]
    Element Should Contain       //span[contains(text(),'Yes')]     Yes

Klik Radio Button Impressive
    Maximize Browser Window
    Click Element                //label[contains(text(),'Impressive')]
    Element Should Be Visible    //span[contains(text(),'Impressive')]
    Element Should Contain       //span[contains(text(),'Impressive')]     Impressive




