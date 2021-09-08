*** Settings ***
Documentation        Automação da busca de personagens no banco de dados por meio da API Marvel QA Ninja

Library              ../resources/factories/character.py

Resource             ../resources/base.robot

Suite Setup        Run Keywords        
...                Logar no sistema            papito@yahoo.com
...                AND                
...                Limpar base

*** Test Cases ***
Deve buscar um personagem pelo Id
    ${PERSONAGEM}                     Black Widow
    
    ${BLACK_WIDOW}                    Post New character
    ...                               ${PERSONAGEM}

    ${PERSONAGEM_ID}                  Set Variable
    ...                               ${BLACK_WIDOW.json()}[_id]

    ${RESPONSE}                       Get Character By Id               
    ...                               ${PERSONAGEM_ID}

    Status Should Be                  200
    ...                               ${RESPONSE} 

    Should Be Equal                   ${BLACK_WIDOW.json()}[name]
    ...                               ${PERSONAGEM}[name]

    Should Be Equal                   ${BLACK_WIDOW.json()}[aliases]
    ...                               ${PERSONAGEM}[aliases]
    
    Should Be Equal                   ${BLACK_WIDOW.json()}[age]
    ...                               ${PERSONAGEM}[age]

    Should Be Equal                   ${BLACK_WIDOW.json()}[team]
    ...                               ${PERSONAGEM}[team]

    Should Be Equal                   ${BLACK_WIDOW.json()}[active]
    ...                               ${PERSONAGEM}[active]

Não deve retornar o personagem pelo Id
    ${PERSONAGEM_ID}                  Set Variable
    ...                               6138e5e2de6b6400165ea0c2

    ${RESPONSE}                       Get Character By Id               
    ...                               ${PERSONAGEM_ID}

    Status Should Be                  404
    ...                               ${RESPONSE}
