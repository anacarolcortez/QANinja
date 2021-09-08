*** Settings ***
Library        AppiumLibrary

*** Variables ***
${CHECKBOX_ROBOT}        xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]
${RECYCLER_VIEW}        id=io.qaninja.android.twp:id/rvContainer

*** Keywords ***
Assure that the checkbox page is showing
    Wait Until Page Contains    Marque as techs que usam Appium

Click on the Robot Framework checkbox
    Click Element    ${CHECKBOX_ROBOT}

Assure that the checkbox was checked correctly
    Wait Until Element Is Visible    ${RECYCLER_VIEW}
    Element Attribute Should Match    ${CHECKBOX_ROBOT}    checked    true