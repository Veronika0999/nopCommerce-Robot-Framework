*** Variables ***

# register form
${SEL_Register}                 css=.ico-register
${SEL_Gender}                   id=gender-male
${SEL_FirstName}                id=FirstName
${SEL_LastName}                 id=LastName
${SEL_Email}                    id=Email
${SEL_Company}                  id=Company
${SEL_Newsletter}               id=Newsletter
${SEL_DayBirth}                 xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[1]/div[2]/div[4]/div/select[1]
${SEL_MonthBirth}               xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[1]/div[2]/div[4]/div/select[2]
${SEL_YearBirth}                xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[1]/div[2]/div[4]/div/select[3]
${SEL_Password}                 id=Password
${SEL_PAsswordConfirm}          id=ConfirmPassword
${SEL_RegisterBtn}              id=register-button
${SEL_LoginIncorrectEmail}      id=Email-error
${SEL_LoginIncorrectPwd1}       id=Password-error
${SEL_LoginIncorrectPwd2}       id=ConfirmPassword-error

${TEXT_FirstName}               John
${TEXT_LastName}                Doe
${TEXT_Day}                     10
${TEXT_Month}                   3
${TEXT_Year}                    89
${TEXT_Pwd}                     John123DoeQW?
${TEXT_Email}                   wivitin570@acentni.com
${TEXT_EmailInstruction}        Email with instructions has been sent to you.

#Error strings
${ERROR_TEXT_EmptyEmail}        Email is required.
${ERROR_TEXT_EmptyPwd1}         Password must meet the following rules:
${ERROR_TEXT_EmptyPwd2}         Password is required.
${ERROR_TEXT_WrongEmail}        Wrong email
${ERROR_TEXT_WrongLogin}        Login was unsuccessful.

#login
${SEL_Login}                    css=.ico-login
${SEL_RememberMe}               id=RememberMe
${SEL_LoginBtn}                 text="Log in"
${SEL_Logout}                   css=.ico-logout
${SEL_WrongLogin}               css=.field-validation-error
${SEL_ForgotPwd}                css=.forgot-password
${SEL_RecoverBtn}               xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[2]/button
${SEL_Content}                  css=.content

#search
${SEL_SearchFile}               id=small-searchterms
${SEL_SearchBtn}                text="Search"
${SEL_SearchItem}               text="Build your own computer"
${SEL_ComputerRAM}              id=product_attribute_2
${SEL_SWTotalCommander}         id=product_attribute_5_12
${SEL_ComputerPrice}            id=price-value-1