*** Settings ***
Documentation        Arquivo base para os testes da API

Library              RequestsLibrary

Resource             routs/characters.robot


*** Variables ***
${URL}                http://marvel.qaninja.academy


*** Keywords ***
Logar no sistema
    [Arguments]                ${EMAIL}
    &{USER}                    Create Dictionary        
    ...                        email=${EMAIL}

    ${RESPONSE}                POST
    ...                        url=${URL}/accounts
    ...                        json=${USER}

    ${CLIENT_KEY}              Set Variable            
    ...                        ${RESPONSE.json()}[client_key]
    
    ${HEADER}                  Create Dictionary
    ...                        client_key=${CLIENT_KEY}

    Set Suite Variable         ${HEADER}

Limpar base
    DELETE                     ${URL}/delorean             headers=${HEADER}



