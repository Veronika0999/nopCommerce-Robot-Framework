*** Settings ***
Library         Browser
Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot

Test Setup      Before test set
Test Teardown   After test set

*** Test Cases ***
Verify the ability to edit user profile information
    Login
    Click               ${SEL_UserAccount}
    Click               ${SEL_GenderF}
    Type Text           ${SEL_FirstName}                      ${TEXT_FirstName2}
    Click               ${SEL_SaveInfoBtn}
    Get Text            ${SEL_ConfirmUserSave}        *=      ${TEXT_ConfirmUserSave}

Verify changing password functionality
    Login
    Click               ${SEL_UserAccount}
    Click               ${SEL_ChangePwdPage}
    Type Text           ${SEL_OldPwd}                   ${TEXT_Pwd}
    Type Text           ${SEL_NewPwd}                   ${TEXT_NewPwd}
    Type Text           ${SEL_NewPwdConfirm}            ${TEXT_NewPwd}
    Click               ${SEL_PwdSaveBtn}
    Get Text            ${SEL_PwdChange}        *=      ${TEXT_PwdChange}

Test updating addresses
    Login
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

*** Keywords ***
Login
    Click               ${SEL_Login}
    Type Text           ${SEL_Email}                    ${TEXT_Email}
    Type Text           ${SEL_Password}                 ${TEXT_Pwd}
    Click               ${SEL_LoginBtn}

Before test set
    New Browser         headless=false
    New Page            ${URL}

After test set
    Close Browser