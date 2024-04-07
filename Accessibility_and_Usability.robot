*** Settings ***
Library         Browser

Resource        Data_and_Config/Configuration.robot
Resource        Data_and_Config/TestData.robot

*** Test Cases ***
Verify website accessibility
#Get title
   New Browser        headless=False
   New Page           ${URL}
   Get Title  ==      ${TEXT_Title}

Test responsiveness across different screen sizes
#Open Website - large
    New Browser     chromium   headless=false  # Optional: Set headless=True for faster tests
    New Context     viewport={'width': 1920, 'height': 1080}
    New Page        ${URL}
    Close Browser

#Open Website - medium
    New Browser     chromium   headless=false  # Optional: Set headless=True for faster tests
    New Context     viewport={'width': 845, 'height': 933}
    New Page        ${URL}
    Close Browser

#Open Website - small
    New Browser     chromium   headless=false  # Optional: Set headless=True for faster tests
    New Context     viewport={'width': 450, 'height': 931}
    New Page        ${URL}
    Close Browser

Verify usability aspects such as error messages
    Open Browser to Demo Page
    Set Strict Mode     off
    Click               ${SEL_Login}
    Type Text           ${SEL_Email}                bad
    Click               ${SEL_Password}
    Get Text            ${SEL_WrongLogin}        *=      ${ERROR_TEXT_WrongEmail}

Verify page content and attributes.
    Open Browser to Demo Page
    Sleep                     2
    ${attr_name}              Get Attribute Names    ${selector}
    Log                       ${attr_name}

    ${text}                   Get Text    xpath=/html/body/div[6]/div[3]/div/div/div/div/div[2]/div[1]/h2
    Should Be Equal           ${text}     ${expected text}
    Sleep                     2

Verify function of multiple links
    Open Browser to Demo Page
    @{elements}          Get Elements    css=a
    FOR    ${element}    IN    @{elements}
           ${link}       Get Property    ${element}    href
           &{res}        Http            ${link}
           Should Be Equal     ${res.status}     ${200}
    END

Verify scrolling
    Open Browser to Demo Page
    Scroll By             ${None}       -600        0          smooth
    Sleep                 2
    Scroll To             ${None}       bottom      left       auto
    Sleep                 2
    Scroll To Element     ${SEL_NewsletterEmail}
    Sleep                 2

*** Keywords ***
Open Browser to Demo Page
    New Browser          chromium        headless=false
    New Page             ${URL}
    Sleep                2

