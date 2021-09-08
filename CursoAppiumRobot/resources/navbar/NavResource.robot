*** Settings ***
Library        AppiumLibrary

*** Variables ***
${BTN_MENU}        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_LAYOUT}        id=io.qaninja.android.twp:id/navView

*** Keywords ***
Click on the navigation menu
    Click Element    ${BTN_MENU}

Assure that the navigation menu is showing on the screen
    Wait Until Element Is Visible    ${NAV_LAYOUT}

Click on the "${option}" menu
    Click Text    ${option}

Assure that the Form page was opened
    Wait Until Page Contains    LOGIN
    Wait Until Page Contains    CADASTRO

Assure that the avengers page was opened
    Wait Until Page Contains    LISTA
    Wait Until Page Contains    BUSCA