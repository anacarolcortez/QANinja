*** Settings ***
Library        hello.py

*** Test Case ***
Deve retornar mensagem de boas vindas
    ${resultado}=        Hello Robot        Ana Cortez
    Should Be Equal        ${resultado}        Hello, Ana Cortez