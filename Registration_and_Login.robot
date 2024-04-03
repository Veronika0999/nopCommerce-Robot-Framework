*** Settings ***
Library         Browser
Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot

Test Setup      Before test set
Test Teardown   After test set

*** Test Cases ***
Registration - successful
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

Registration - unsuccessful
    Set Strict Mode     off
    Click               ${SEL_Register}
    Click               ${SEL_Gender}
    Type Text           ${SEL_FirstName}            ${TEXT_FirstName}
    Type Text           ${SEL_LastName}             ${TEXT_LastName}
    Select Options By   ${SEL_DayBirth}             index     ${TEXT_Day}
    Select Options By   ${SEL_MonthBirth}           index     ${TEXT_Month}
    Select Options By   ${SEL_YearBirth}            index     ${TEXT_Year}
    Type Text           ${SEL_Email}                ${EMPTY}
    Check Checkbox      ${SEL_Newsletter}
    Type Text           ${SEL_Password}             ${TEXT_Pwd}
    Type Text           ${SEL_PAsswordConfirm}      ${EMPTY}
    Click               ${SEL_RegisterBtn}
    Get Text            ${SEL_LoginIncorrectEmail}       *=      ${ERROR_TEXT_EmptyEmail}
    Get Text            ${SEL_LoginIncorrectPwd2}        *=      ${ERROR_TEXT_EmptyPwd2}

Registration - email validation
    Set Strict Mode     off
    Click               ${SEL_Register}
    Type Text           ${SEL_Email}                bademail
    Click               ${SEL_Company}
    Get Text            ${SEL_LoginIncorrectEmail}       *=      ${ERROR_TEXT_WrongEmail}

Registration - password strength requirements
    Set Strict Mode     off
    Click               ${SEL_Register}
    Type Text           ${SEL_Password}             a
    Click               ${SEL_PAsswordConfirm}
    Get Text            ${SEL_LoginIncorrectPwd1}        *=      ${ERROR_TEXT_EmptyPwd1}

Login - successful
    Set Strict Mode     off
    Click               ${SEL_Login}
    Type Text           ${SEL_Email}                ${TEXT_Email}
    Type Text           ${SEL_Password}             ${TEXT_Pwd}
    Check Checkbox      ${SEL_RememberMe}
    Click               ${SEL_LoginBtn}
    Click               ${SEL_Logout}

Login - unsuccessful
    Set Strict Mode     off
    Click               ${SEL_Login}
    Type Text           ${SEL_Email}                bad
    Click               ${SEL_Password}
    Get Text            ${SEL_WrongLogin}        *=      ${ERROR_TEXT_WrongEmail}

Login - forgot password
    Set Strict Mode     off
    Click               ${SEL_Login}
    Click               ${SEL_ForgotPwd}
    Type Text           ${SEL_Email}                    ${TEXT_Email}
    Click               ${SEL_RecoverBtn}
    Get Text            ${SEL_Content}        *=        ${TEXT_EmailInstruction}

*** Keywords ***
Before test set
    New Browser     headless=false
    New Page        ${URL}

After test set
    Close Browser