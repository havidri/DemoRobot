*** Settings ***
Documentation          
Library                SeleniumLibrary
Test Setup             Open Browser        ${webURL}        ${BROWSERS}
Test Teardown          Close All Browsers

*** Variables ***
${BROWSERS}                chrome
${webURL}                  https://demoqa.com/checkbox

*** Test Cases ***
I want to check one data in checkbox Notes
    Maximize Browser Window
    Click Element                //button[@title="Expand all"]
    Click Element                (//span[@class="rct-checkbox"])[3]
    Element Should Be Visible    //div[@id="result"]
    Element Should Contain       //span[@class="text-success"]            notes
    Sleep                        2

I want to check one data in checkbox Classified
    Maximize Browser Window
    Click Element                //button[@title="Expand all"]
    Click Element                (//span[@class="rct-checkbox"])[10]
    Element Should Be Visible    //div[@id='result']
    Element Should Contain       //span[@class="text-success"]            classified
    Sleep                        2