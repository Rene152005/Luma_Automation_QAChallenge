*** Settings ***
Resource            Orders_And_Returns_Resources.robot
Resource            ../../Resources/Commons/Common_Elements.robot
Suite Setup         Global Suite Setup
Suite Teardown      Global Suite Teardown
Force Tags          Orders and Returns


*** Test Cases ***
Guest user goes to Order and Returns 1
    [Documentation]             The following test case will open the e-Commerce website in Chrome,  
    ...                         fills out the form and then validates the contents of the table.
    [Tags]                      ATC001
    FOR      ${repeater}        IN RANGE    1    3
    Open URL for Project        Chrome
    Guest user navigates to the Order and Returns
    The user clicks on the link Order and Returns
    The user enters information on the form
    The Order Information screen
    Completes the process
    END

Guest user goes to Order and Returns 2
    [Documentation]             The following test case will open the e-Commerce website in Firefox,  
    ...                         fills out the form and then validates the contents of the table.
    [Tags]                      ATC002
    Open URL for Project        Firefox
    Guest user navigates to the Order and Returns
    The user clicks on the link Order and Returns
    The user enters information on the form
    The Order Information screen
    Completes the process
    
Guest user goes to Order and Returns 3
    [Documentation]             The following test case will open the e-Commerce website in Firefox,  
    ...                         fills out the form and then validates the contents of the table.
    [Tags]                      ATC003
    Open URL for Project        Edge
    Guest user navigates to the Order and Returns
    The user clicks on the link Order and Returns
    The user enters information on the form
    The Order Information screen
    Completes the process