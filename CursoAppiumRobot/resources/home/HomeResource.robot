*** Settings ***
Library        AppiumLibrary

*** Variables ***
${BTN_MENU}        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]        

*** Keywords ***
Assure the main screen shows the text
    [Arguments]        ${TEXT}
    Wait Until Page Contains        ${TEXT}        5

Assure the button "${word}" is visible
    Wait Until Page Contains       ${word}     5 

Click on the button "${word}"
    Click Text        ${word}

Assure the navigation menu is showing on the screen
    Wait Until Element Is Visible        ${BTN_MENU}        5              