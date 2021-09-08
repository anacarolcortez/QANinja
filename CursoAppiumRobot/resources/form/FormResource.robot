*** Settings ***
Library        AppiumLibrary

*** Variables ***
${INPUT_NAME}        id=io.qaninja.android.twp:id/etUsername
${INPUT_EMAIL}        id=io.qaninja.android.twp:id/etEmail
${INPUT_PASSWORD}        id=io.qaninja.android.twp:id/etPassword
${SELECT_PROFILE}        id=io.qaninja.android.twp:id/spinnerJob

*** Keywords ***
Click on the "${cardname}" card
    Click Text    ${cardname}

Assure that the regstration form is showing
    Wait Until Page Contains    Bem-vindo, crie sua
    Wait Until Page Contains    conta.

Input the user name into the textfield
    [Arguments]        ${name}
    Input Text    ${INPUT_NAME}    ${name}

Input the user email into the textfield
    [Arguments]        ${email}
    Input Text    ${INPUT_EMAIL}    ${email}

Input the user password into the textfield
    [Arguments]        ${password}
    Input Text    ${INPUT_PASSWORD}    ${password}

Click on the listbox to select option
    [Arguments]        ${option}
    Click Text    ${option}

Click on the register button
    Click Text    CADASTRAR

Assure a confirmation message pops up
    Wait Until Page Contains    Tudo certo, recebemos seus dados!