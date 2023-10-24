*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     String
Library     OperatingSystem
Variables   Common_Variables.py
Resource    ../../Resources/Page_Objects/Orders_And_Returns_Page_Object.robot


*** Variables ***
${LUMA_HOMEPAGE}                                    //a[@class="logo"]


*** Keywords ***
Open URL for Project
    [Arguments]                                     ${BROWSER}
    Open Browser                                    ${ENVIRONMENT}                                  ${BROWSER}
    sleep   2
    Maximize Browser Window
    Delete All Cookies
    wait until element is visible                   ${LUMA_HOMEPAGE}                                timeout=15s
    
Wait and Click Element
    [Arguments]                                     ${locator}                                      ${timeout}=15s
    Wait Until Page Contains Element                ${locator}                                      timeout=${timeout}
    Wait Until Element is Visible                   ${locator}                                      timeout=${timeout}
    Wait Until Element is Enabled                   ${locator}                                      timeout=${timeout}
    Set Focus To Element                            ${locator}            
    ${isClicked}                                    Run Keyword And Return Status    
    ...                                             Click Element                                   ${locator}
    Run Keyword If                                  ${isClicked} == ${False}
    ...                                             Async JS Click                                  ${locator}

Global Suite Setup
    Log to Console      == STARTING FLOWS BY RENE ==
   
Global Suite Teardown
    Sleep    1
    Log to console      == END OF FLOWS BY RENE ==

Existing user logs into eComm website
    [Arguments]     ${locale}
    Click "Log in" button and enter credentials    ${locale}
    The user logs in
    Verify the user is logged in correctly

The user logs in
    The user logs into the eComm store

Verify the user is logged in correctly
    Verification of log in

The user logs out
    The user logs out of the eComm store