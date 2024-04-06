*** Settings ***
Library         Browser
Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot

Test Setup      Before test set
Test Teardown   After test set

*** Test Cases ***
Verify adding items to the cart
    Login
    Set Strict Mode     off
    Go To               ${URL_Notebooks}
    Click               ${SEL_AppleNtb}
    Type Text           ${SEL_QuantityAppleNtb}     5
    Click               ${SEL_AppleAddCartBtn}
    Go Back
    Click               ${SEL_HPNtb}
    Type Text           ${SEL_QuantityHP}           2
    Click               ${SEL_HPAddCartBtn}
    Click               ${SEL_ShoppingCartBtn}
    Click               ${TEXT_ShoppingCartTotal}

Test updating the quantity of items in the cart
    Login
    Set Strict Mode     off
    Go To               ${URL_Notebooks}
    Click               ${SEL_AppleNtb}
    Type Text           ${SEL_QuantityAppleNtb}               5
    Click               ${SEL_AppleAddCartBtn}
    Click               ${SEL_ShoppingCartBtn}
    Type Text           ${SEL_ShoppingCartQty}                100
    Click               ${SEL_UpdateShoppingCart}
    Get Text            ${SEL_ProductPriceShoppingCart}       *=       $189,000.00

Verify removing items from the cart
    Login
    Set Strict Mode     off
    Go To               ${URL_Notebooks}
    Click               ${SEL_AppleNtb}
    Type Text           ${SEL_QuantityAppleNtb}                 5
    Click               ${SEL_AppleAddCartBtn}
    Click               ${SEL_ShoppingCartBtn}
    Click               ${SEL_RemoveShoppingCartBtn}
    Get Text            ${SEL_EmptyShoppingCart}           *=         ${TEXT_EmptyShoppingCart}
    Sleep    2

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
