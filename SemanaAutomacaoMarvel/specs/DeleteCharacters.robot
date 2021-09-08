*** Settings ***
Documentation        Automação da exclusão de personagens no banco de dados por meio da API Marvel QA Ninja

Library              ../resources/factories/character.py

Resource             ../resources/base.robot

Suite Setup        Run Keywords        
...                Logar no sistema            papito@yahoo.com
...                AND                
...                Limpar base


*** Test Cases ***
Deve deletar personagem pelo Id
    &{PERSONAGEM}              Deadpool

    ${DEADPOOL}                Post New Character        
    ...                        ${PERSONAGEM}  

    ${PERSONAGEM_ID}           Set Variable
    ...                        ${DEADPOOL.json()}[_id]

    ${DELETE_DEADPOOL}         Delete Character By Id        
    ...                        ${PERSONAGEM_ID} 

    Status Should Be           204        
    ...                        ${DELETE_DEADPOOL}

    ${RESPONSE}                Get Character By Id        
    ...                        ${PERSONAGEM_ID}

    Status Should Be           404        
    ...                        ${RESPONSE} 

Não deve deletar personagem pelo Id
    ${PERSONAGEM_ID}           Set Variable
    ...                        6138e5e2de6b6400165ea0c2

    ${DELETE_CHARACTER}        Delete Character By Id        
    ...                        ${PERSONAGEM_ID} 

    Status Should Be           404        
    ...                        ${DELETE_CHARACTER}
