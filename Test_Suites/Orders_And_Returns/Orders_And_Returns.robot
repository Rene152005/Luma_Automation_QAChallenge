*** Settings ***
Resource          Orders_And_Returns_Resources.robot
Resource          ../../Resources/Commons/Common_elements.robot
Suite Setup       Global Suite Setup
Suite Teardown    Global Suite Teardown
Force Tags        Orders and Returns



*** Test Cases ***
Guest user goes to Order and Returns
    [Documentation]     The following test case will open the e-Commerce website,  
    ...                 fill out the form and then validate the contents of the table.
    [Tags]              ATC001
    Open URL for Project
    Guest user navigates to the Order and Returns
    The user clicks on the link Order and Returns
    The user enters information on the form
    The Order Information screen