*** Settings ***
Documentation        Automação da criação de personagens no banco de dados por meio da API Marvel QA Ninja

Library              ../resources/factories/character.py

Resource             ../resources/base.robot

Suite Setup        Run Keywords        
...                Logar no sistema            papito@yahoo.com
...                AND                
...                Limpar base


*** Test Cases ***
Deve criar personagem
    &{PERSONAGEM}              Factory Character

    ${RESPOSTA}                Post New Character        
    ...                        ${PERSONAGEM}  

    Status Should Be           200
    ...                        ${RESPOSTA}

Não deve cadastrar com o mesmo nome
    &{PERSONAGEM}              Spiderman

    Post New Character         ${PERSONAGEM}

    ${RESPOSTA}                Post New Character
    ...                        ${PERSONAGEM} 

    Status Should Be           409
    ...                        ${RESPOSTA}

    Should Be Equal            ${RESPOSTA.json()}[error]
    ...                        Character already exists :(
