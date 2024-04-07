*** Settings ***
Library         Browser
Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot
Test Timeout    2m

Test Setup      Before test set
Test Teardown   After test set

*** Test Cases ***
Verify the checkout process for guest users
    Set Strict Mode     off
    Go To               ${URL_Notebooks}
    Click               ${SEL_AppleNtb}
    Click               ${SEL_AppleAddCartBtn}
    Click               ${SEL_ShoppingCartBtn}
    Check Checkbox      ${SEL_CheckoutTermofService}
    Click               ${SEL_CheckoutBtn}
    Get Text            ${SEL_PleaseSignIn}        *=      ${TEXT_PleaseSignIn}


Test the checkout process for registered users
    Registration
    Login
    Test updating addresses
    Set Strict Mode     off
    Go To               ${URL_Notebooks}
    Click               ${SEL_AppleNtb}
    Click               ${SEL_AppleAddCartBtn}
    Click               ${SEL_ShoppingCartBtn}
    Check Checkbox      ${SEL_CheckoutTermofService}
    Click               ${SEL_CheckoutBtn}
    Click               ${SEL_BillingAddressContinue}
    Click               ${SEL_ShippingContinue}
    Click               ${SEL_PaymentContinue}
    Click               ${SEL_PaymentInfoContinue}
    Click               ${SEL_PaymentConfirm}
    Get Text            ${SEL_SuccessfulPayment}        *=      ${TEXT_SuccessfulPayment}

*** Keywords ***
Before test set
    New Browser     headless=false
    New Page        ${URL}

After test set
    Close Browser

Registration
    Set Strict Mode     off
    Click               ${SEL_Register}
    Click               ${SEL_Gender}
    Type Text           ${SEL_FirstName}            ${TEXT_FirstName}
    Type Text           ${SEL_LastName}             ${TEXT_LastName}
    Select Options By   ${SEL_DayBirth}             index     ${TEXT_Day}
    Select Options By   ${SEL_MonthBirth}           index     ${TEXT_Month}
    Select Options By   ${SEL_YearBirth}            index     ${TEXT_Year}
    Type Text           ${SEL_Email}                ${TEXT_Email}
    Check Checkbox      ${SEL_Newsletter}
    Type Text           ${SEL_Password}             ${TEXT_Pwd}
    Type Text           ${SEL_PAsswordConfirm}      ${TEXT_Pwd}
    Click               ${SEL_RegisterBtn}

Login
    Click               ${SEL_Login}
    Type Text           ${SEL_Email}                    ${TEXT_Email}
    Type Text           ${SEL_Password}                 ${TEXT_Pwd}
    Click               ${SEL_LoginBtn}

Test updating addresses
    Click               ${SEL_UserAccount}
    Click               ${SEL_AddressPage}
    Click               ${SEL_AddressAddBtn}
    Type Text           ${SEL_AddressFName}             ${TEXT_FirstName}
    Type Text           ${SEL_AddressLName}             ${TEXT_LastName}
    Type Text           ${SEL_AddressEmail}             ${TEXT_AddressEmail}
    Select Options By   ${SEL_AddressCountry}           index     ${TEXT_AddressCountry}
    Type Text           ${SEL_AddressCity}              ${TEXT_AddressCity}
    Type Text           ${SEL_AddressAddress}           ${TEXT_AddressAddress}
    Type Text           ${SEL_AddressZip}               ${TEXT_AddressZip}
    Type Text           ${SEL_AddressPhone}             ${TEXT_AddressPhone}
    Click               ${SEL_AddressSaveBtn}
    Get Text            ${SEL_AddressConfirm}        *=      ${TEXT_AddressConfirm}