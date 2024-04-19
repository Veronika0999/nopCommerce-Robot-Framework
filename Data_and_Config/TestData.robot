*** Variables ***

# register form
${SEL_Register}                 css=.ico-register
${SEL_Gender}                   id=gender-male
${SEL_GenderF}                  id=gender-female
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

# Text strings
${TEXT_FirstName}               John
${TEXT_LastName}                Doe
${TEXT_Day}                     10
${TEXT_Month}                   3
${TEXT_Year}                    89
${TEXT_Pwd}                     John123DoeQW?
${TEXT_Email}                   wivitin570@acentni.com
${TEXT_EmailInstruction}        Email with instructions has been sent to you.
${TEXT_FirstName2}              Jane

#Error strings
${ERROR_TEXT_EmptyEmail}        Email is required.
${ERROR_TEXT_EmptyPwd1}         Password must meet the following rules:
${ERROR_TEXT_EmptyPwd2}         Password is required.
${ERROR_TEXT_WrongEmail}        Wrong email
${ERROR_TEXT_WrongLogin}        Login was unsuccessful.

#login
${SEL_Login}                    css=.ico-login
${SEL_RememberMe}               id=RememberMe
${SEL_LoginBtn}                 xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
${SEL_Logout}                   css=.ico-logout
${SEL_WrongLogin}               css=.field-validation-error
${SEL_ForgotPwd}                css=.forgot-password
${SEL_RecoverBtn}               xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/form/div[2]/button
${SEL_Content}                  css=.content

#user profile management
${SEL_UserAccount}              css=.ico-account
${SEL_SaveInfoBtn}              id=save-info-button
${SEL_ConfirmUserSave}          xpath=/html/body/div[5]/div/p
${SEL_ChangePwdPage}            xpath=/html/body/div[6]/div[3]/div/div[1]/div/div[2]/ul/li[7]
${SEL_OldPwd}                   id=OldPassword
${SEL_NewPwd}                   id=NewPassword
${SEL_NewPwdConfirm}            id=ConfirmNewPassword
${SEL_PwdSaveBtn}               xpath=/html/body/div[6]/div[3]/div/div[2]/div/div[2]/form/div[2]/button
${SEL_PwdChange}                xpath=/html/body/div[5]/div/p
${SEL_AddressPage}              xpath=/html/body/div[6]/div[3]/div/div[1]/div/div[2]/ul/li[2]/a
${SEL_AddressAddBtn}            xpath=/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div[2]/button
${SEL_AddressFName}             id=Address_FirstName
${SEL_AddressLName}             id=Address_LastName
${SEL_AddressEmail}             id=Address_Email
${SEL_AddressCountry}           id=Address_CountryId
${SEL_AddressCity}              id=Address_City
${SEL_AddressAddress}           id=Address_Address1
${SEL_AddressZip}               id=Address_ZipPostalCode
${SEL_AddressPhone}             id=Address_PhoneNumber
${SEL_AddressSaveBtn}           xpath=/html/body/div[6]/div[3]/div/div[2]/form/div/div[2]/div[2]/button
${SEL_AddressConfirm}           xpath=/html/body/div[5]/div/p

${TEXT_ConfirmUserSave}         The customer info has been updated successfully.
${TEXT_NewPwd}                  tohleJeNovePwd5
${TEXT_PwdChange}               Password was changed
${TEXT_AddressEmail}            85nh1laa6j@mailcurity.com
${TEXT_AddressCountry}          5
${TEXT_AddressCity}             Prague
${TEXT_AddressAddress}          Street 5
${TEXT_AddressZip}              11000
${TEXT_AddressPhone}            777888777
${TEXT_AddressConfirm}          The new address has been added successfully.

#product searching
${SEL_SearchFile}               id=small-searchterms
${SEL_SearchBtn}                css=.button-1.search-box-button
${SEL_BuildComputer}            xpath=/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div[2]/h2/a
${SEL_SearchAdvanced}           xpath=//*[@id="advs"]
${SEL_SearchCategory}           id=cid
${SEL_SearchManufacturer}       id=mid
${SEL_SearchBtnAdvance}         css=.button-1.search-button
${SEL_AppleMacBookPro}          xpath=/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div[2]/h2/a
${SEL_ProductsPagesize}         id=products-pagesize
${SEL_BuildComputerPage}        xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[1]/div/div[2]/h2/a
${SEL_HDD400GB}                 id=product_attribute_3_7
${SEL_SWTotalCommander}         id=product_attribute_5_12
${SEL_ComputerQuantity}         id=product_enteredQuantity_1
${SEL_ComputerPrice}            id=price-value-1
${SEL_Orderby}                  id=products-orderby
${SEL_NotebookPrice}            xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[1]/div/div[2]/div[3]/div[1]/span

${TEXT_BuildComputer}           Build your own computer
${TEXT_AppleMacBookPro}         Apple MacBook Pro 13-inch
${TEXT_ComputerPrice}           $1,420.00
${TEXT_NotebookPrice}           $1,350.00


#shopping cart
${SEL_AppleNtb}                     xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[1]/div/div[2]/h2/a
${SEL_QuantityAppleNtb}             id=product_enteredQuantity_4
${SEL_AppleAddCartBtn}              id=add-to-cart-button-4
${SEL_HPNtb}                        xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[2]/div[2]/div/div/div[3]/div/div[2]/h2/a
${SEL_QuantityHP}                   id=product_enteredQuantity_8
${SEL_HPAddCartBtn}                 id=add-to-cart-button-8
${SEL_ShoppingCartBtn}              css=.cart-label
${SEL_ShoppingCartQty}              id=itemquantity11223
${SEL_UpdateShoppingCart}           id=updatecart
${SEL_ProductPriceShoppingCart}     css=.product-subtotal
${SEL_RemoveShoppingCartBtn}        css=.remove-btn
${SEL_EmptyShoppingCart}            css=.no-data

${TEXT_ShoppingCartTotal}           css=.cart-total-left
${TEXT_EmptyShoppingCart}           Your Shopping Cart is empty!

#accessibility and usability
${SEL_NewsletterEmail}             id=newsletter-email
${TEXT_Title}                      nopCommerce demo store
${expected text}                   Welcome to our store
${selector}                        xpath=/html/body/div[6]/div[3]/div/div/div/div/div[2]/div[1]/h2

#checkout
${SEL_CheckoutTermofService}        id=termsofservice
${SEL_CheckoutBtn}                  css=.button-1.checkout-button
${SEL_BillingAddressContinue}       css=.button-1.new-address-next-step-button
${SEL_ShippingContinue}             css=.button-1.shipping-method-next-step-button
${SEL_PaymentContinue}              xpath=//*[@id="payment-method-buttons-container"]/button
${SEL_PaymentInfoContinue}          css=.button-1.payment-info-next-step-button
${SEL_PaymentConfirm}               css=.button-1.confirm-order-next-step-button
${SEL_SuccessfulPayment}            xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/div/div[1]/strong
${TEXT_SuccessfulPayment}           Your order has been successfully processed!
${SEL_PleaseSignIn}                 xpath=/html/body/div[6]/div[3]/div/div/div/div[1]/h1
${TEXT_PleaseSignIn}                Welcome, Please Sign In!

#order management
${SEL_AccOrders}                    xpath=/html/body/div[6]/div[3]/div/div[1]/div/div[2]/ul/li[3]/a
${SEL_AccDetailOrder}               text=Details
${SEL_ReorderBtn}                   css=.button-1.re-order-button
${SEL_StatusPending}                css=.order-status.pending
${SEL_HistoryOrder}                 xpath=/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div/div/div[1]/strong

${TEXT_StatusPending}               Pending
${TEXT_HistoryOrder}                Order Number:
