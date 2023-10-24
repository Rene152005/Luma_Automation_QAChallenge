*** Settings ***
Resource          Orders_And_Returns_Resources.robot
Resource          ../../Resources/Commons/Common_elements.robot
Suite Setup       Global Suite Setup
Suite Teardown    Global Suite Teardown
Force Tags        Orders and Returns



*** Test Cases ***
Guest user goes to Order and Returns
    Open URL for Project
    Guest user navigates to the Order and Returns
    The user clicks on the link Order and Returns
    The user enters information on the form
#    The checkout process
#    Continue checkout
#    Order Summary page
#    Payment options
#    Thank you page
#    Log out user