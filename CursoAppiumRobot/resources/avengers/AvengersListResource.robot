*** Settings ***
Library        AppiumLibrary

*** Variables ***
${BTN_REMOVE}        id=io.qaninja.android.twp:id/btnRemove

*** Keywords ***
Assure that the avengers list page is showing
    Wait Until Page Contains    LISTA    5

Swipe Captain America card
    Swipe By Percent    88.88    18.22    47.22    18.22

Press delete button
    Wait Until Element Is Visible    ${BTN_REMOVE}
    Click Element    ${BTN_REMOVE}