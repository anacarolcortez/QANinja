*** Settings ***
Library        AppiumLibrary

*** Variables ***
${OPTION_PYTHON}        xpath=//android.widget.RadioButton[contains(@text, 'Python')]

*** Keywords ***
Assure that the input page was opened
    Wait Until Page Contains    CHECKBOX
    Wait Until Page Contains    BOTÕES DE RADIO

Assure that the Botoes de Radio page is showing
    Wait Until Page Contains        Escolha sua linguagem preferida

Click on the Python radio button
    Click Element    ${OPTION_PYTHON}

Assure that the radio button was checked correctly
    Element Attribute Should Match    ${OPTION_PYTHON}    checked    true