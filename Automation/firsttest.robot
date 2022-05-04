*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}    https://flipkart.com
${browser}   chrome

*** Test Cases ***
Validationtest
    Open Browser    ${url}  ${browser}
    Set Browser Implicit Wait   5
    Maximize Browser Window
    Title should be     Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    ${input_txt}    set variable    xpath://input[@class='_2IX_2- VJZDxU']
    element should be enabled   ${input_txt}
    element should be visible   ${input_txt}
    sleep   3
    input text      xpath://input[@class='_2IX_2- VJZDxU']      deepakmudhiraj92@gmail.com
    sleep   3
    close browser




*** Keywords ***
