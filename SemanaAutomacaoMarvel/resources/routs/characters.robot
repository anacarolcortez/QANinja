*** Settings ***
Documentation        Ações para a rota /characters

Resource             ../../resources/base.robot

*** Keywords ***
Post New Character
    [Arguments]                ${PAYLOAD}
 
    ${RESPONSE}                POST
    ...                        url=${URL}/characters        
    ...                        json=${PAYLOAD}        
    ...                        headers=${HEADER}
    ...                        expected_status=any

    [Return]                   ${RESPONSE}

Get Character By Id
    [Arguments]                ${ID}

    ${RESPONSE}                GET
    ...                        url=${URL}/characters/${ID}
    ...                        headers=${HEADER}
    ...                        expected_status=any
    
    [Return]                   ${RESPONSE} 

Delete Character By Id
    [Arguments]                ${ID}

    ${RESPONSE}                DELETE
    ...                        url=${URL}/characters/${ID}
    ...                        headers=${HEADER}
    ...                        expected_status=any
    
    [Return]                   ${RESPONSE} 




