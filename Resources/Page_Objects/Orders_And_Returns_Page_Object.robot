*** Settings ***
Library     SeleniumLibrary                         implicit_wait=15
Variables    ../Commons/Common_Variables.py



*** Variables ***
#***************************************************LOCATORS BY XPATH *****************************************************#
${COPYRIGHT_FOOTER}                                 //small[@class="copyright"]
${ORDERS_AND_RETURNS_URL}                           //footer[@class="page-footer"]//a[contains(text(),'Orders and Returns')]
${CONTINUE_BUTTON}                                  //button[@type="submit"]/span[contains(text(),'Continue')]
${ORDER_ID_FIELD}                                   //input[@id="oar-order-id"]
${BILLING_LAST_NAME_FIELD}                          //input[@id="oar-billing-lastname"]
${EMAIL_FIELD}                                      //input[@id="oar_email"]


*** Keywords ***
The user scrolls to the bottom of the page
    Execute JavaScript                              window.scrollTo(0, document.body.scrollHeight);
    Wait until element is enabled                   ${COPYRIGHT_FOOTER}

The user clicks the link to display the form
    Wait Until Keyword Succeeds                     3x    2s                    
    ...                                             Set focus to element                            ${ORDERS_AND_RETURNS_URL}                    
    Click element                                   ${ORDERS_AND_RETURNS_URL}
    Wait until keyword succeeds                     3x    2s
    ...                                             element should be visible                       ${CONTINUE_BUTTON} 
    
The user fills out the form
    Set focus to element                            ${ORDER_ID_FIELD}    
    Click element                                   ${ORDER_ID_FIELD}              
    Input Text                                      ${ORDER_ID_FIELD}                               ${ORDER_ID}
    Set focus to element                            ${BILLING_LAST_NAME_FIELD}    
    Click element                                   ${BILLING_LAST_NAME_FIELD}
    Input Text                                      ${BILLING_LAST_NAME_FIELD}                      ${BILLING_LAST_NAME}
    Set focus to element                            ${EMAIL_FIELD}    
    Click element                                   ${EMAIL_FIELD}
    Input Text                                      ${EMAIL_FIELD}                                  ${EMAIL}