*** Settings ***
Library         Browser
Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot

Test Setup      Before test set
Test Teardown   After test set

*** Test Cases ***
Verify the functionality of product search
    Set Strict Mode         off
    Type Text               ${SEL_SearchFile}                   computer
    Click                   ${SEL_SearchBtn}
    Get Text                ${SEL_BuildComputer}        *=      ${TEXT_BuildComputer}

Test filtering products by various criteria (category)
    Set Strict Mode         off
    Type Text               ${SEL_SearchFile}                  notebook
    Click                   ${SEL_SearchBtn}
    Click                   ${SEL_SearchAdvanced}
    Select Options By       ${SEL_SearchCategory}              index    3
    Select Options By       ${SEL_SearchManufacturer}          index    1
    Click                   ${SEL_SearchBtnAdvance}
    Get Text                ${SEL_AppleMacBookPro}       *=    ${TEXT_AppleMacBookPro}

#Verify sorting options (price low to high)
#    Set Strict Mode      off
#    Go To                ${URL_Computers}
#    Click    xpath=/html/body/div[6]/div[3]/div/div[3]/div/div[2]/div[1]/div/div[2]/div/h2/a
#    Select Options By    id=products-orderby    index    3
#    Sleep    2
#    @{prices}    Get Matching Prices
#    ${lowest_price}    Set Lowest Price    ${prices}
#    Log    Lowest price found: ${lowest_price}

Verify sorting options (price low to high)
    Set Strict Mode             off
    Go To                       ${URL_Notebooks}
    Select Options By           ${SEL_Orderby}                    index    3
    Sleep    2
    Get Text                    ${SEL_NotebookPrice}     *=       ${TEXT_NotebookPrice}

Test product pagination
    Go To                       ${URL_Desktops}
    ${all_options}              Get Select Options              ${SEL_ProductsPagesize}
    Log                         ${all_options}
    ${selected_option}          Get Selected Options            ${SEL_ProductsPagesize}
    Log                         ${selected_option}
    Select Options By           ${SEL_ProductsPagesize}         index           2
    Deselect Options            ${SEL_ProductsPagesize}

Verify product details page functionality
    Go To                       ${URL_Desktops}
    Click                       ${SEL_BuildComputerPage}
    Click                       ${SEL_HDD400GB}
    Check Checkbox              ${SEL_SWTotalCommander}
    Type Text                   ${SEL_ComputerQuantity}     2
    Get Text                    ${SEL_ComputerPrice}        *=      ${TEXT_ComputerPrice}

*** Keywords ***
Before test set
    New Browser     headless=false
    New Page        ${URL}

After test set
    Close Browser

#Get Matching Prices
#    ${prices}    Get Text    css=.price.actual-price
#    [RETURN]    ${prices}
#
#Set Lowest Price
#    [Arguments]    ${prices}
#    ${lowest_price} =    Set Variable    ${prices}[0]
#    FOR    ${price}    IN    @{prices}
#        Run Keyword If    ${price} < ${lowest_price}    Set Variable    ${price}
#
#    END
#    [RETURN]    ${lowest_price}