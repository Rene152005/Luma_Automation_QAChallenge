*** Settings ***
Library     SeleniumLibrary                         implicit_wait=15
Variables   ../Commons/Common_Variables.py


*** Variables ***
#***************************************************LOCATORS BY XPATH *****************************************************#
${COPYRIGHT_FOOTER}                                 //small[@class="copyright"]
${ORDERS_AND_RETURNS_URL}                           //footer[@class="page-footer"]//a[contains(text(),'Orders and Returns')]
${CONTINUE_BUTTON}                                  //button[@type="submit"]/span[contains(text(),'Continue')]
${ORDER_ID_FIELD}                                   //input[@id="oar-order-id"]
${BILLING_LAST_NAME_FIELD}                          //input[@id="oar-billing-lastname"]
${EMAIL_FIELD}                                      //input[@id="oar_email"]
${ORDER_INFORMATION}                                //li[@class="item cms_page"]/strong


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
    Set focus to element                            ${CONTINUE_BUTTON}    
    Click element                                   ${CONTINUE_BUTTON}
    wait until keyword succeeds                     3x    2s 
    ...                                             Set focus to element                            ${ORDER_INFORMATION}

Location validation
    Location Should Contain                         ${URL_VALIDATION}
    
The Order information table details validation
    [Documentation]    Validations for Order Information contents
    FOR     ${categories}  IN RANGE  1  6
            ${category_text} =  Set Variable        ${TABLE_HEADERS}[${categories}]
            Page Should Contain Element             //table[@class="data table table-order-items"]//th[text()='${category_text}']
    END

Validation of Ordered Products in the first line
    [Documentation]    Validations for ordered products on the first line of the table
    FOR     ${categories}  IN RANGE  1  6
            ${first_row} =  Set Variable            ${PURCHASED_PRODUCT_1}[${categories}]
            Page Should Contain Element             //tr[@id="order-item-row-82599"]//*[contains(text(),'${first_row}')] 
    END
    
Validation of Ordered Products in the second line
    [Documentation]    Validations for ordered products on the second line of the table
    FOR     ${categories}  IN RANGE  1  6
            ${second_row} =  Set Variable           ${PURCHASED_PRODUCT_2}[${categories}]
            Page Should Contain Element             //tr[@id="order-item-row-82601"]//*[contains(text(),'${second_row}')] 
    END
    
The flow ends by closing the window
    Delete All Cookies
    Close browser