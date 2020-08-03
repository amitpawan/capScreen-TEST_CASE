*** Settings ***
Library     SeleniumLibrary

*** Test Case ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/      chrome
    maximize browser window
    input text      xpath=//input[@id='txtUsername']    Admin
    input text      xpath=//input[@id='txtPassword']    admin123

    capture element screenshot      xpath=//div[@id='divLogo']//img     logo.png
    capture page screenshot     LoginTC.png

    close browser
    