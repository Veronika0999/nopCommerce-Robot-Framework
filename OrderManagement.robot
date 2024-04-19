*** Settings ***
Library         Browser
Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot

Test Setup      Before test set
Test Teardown   After test set

*** Test Cases ***
Verify order history for registered users
    Login
    Click       ${SEL_UserAccount}
    Click       ${SEL_AccOrders}
    Get Text    ${SEL_HistoryOrder}         *=        ${TEXT_HistoryOrder}

Test order details page
    Login
    Click       ${SEL_UserAccount}
    Click       ${SEL_AccOrders}
    Sleep       2
    Click       ${SEL_AccDetailOrder}
    Click       ${SEL_ReorderBtn}
    Sleep       2

Verify order status updates (processing, shipped)
    Login
    Click       ${SEL_UserAccount}
    Click       ${SEL_AccOrders}
    Get Text    ${SEL_StatusPending}         *=        ${TEXT_StatusPending}

*** Keywords ***
Before test set
    New Browser     headless=false
    New Page        ${URL}

After test set
    Close Browser

Login
    Click               ${SEL_Login}
    Type Text           ${SEL_Email}                    ${TEXT_Email}
    Type Text           ${SEL_Password}                 ${TEXT_Pwd}
    Click               ${SEL_LoginBtn}
    Set Strict Mode     off
