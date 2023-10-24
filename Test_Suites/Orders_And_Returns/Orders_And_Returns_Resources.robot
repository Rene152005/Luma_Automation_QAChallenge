*** Settings ***
Resource    ../../Resources/Commons/Common_elements.robot
Resource    ../../Resources/Page_Objects/Orders_And_Returns_Page_Object.robot


*** Keywords ***
Guest user navigates to the Order and Returns
    The user scrolls to the bottom of the page

The user clicks on the link Order and Returns
    The user clicks the link to display the form
    
The user enters information on the form
    The user fills out the form
    
The Order Information screen
    Location validation
    The Order information table details validation
    Validation of Ordered Products in the first line
    Validation of Ordered Products in the second line
    
Completes the process
    The flow ends by closing the window