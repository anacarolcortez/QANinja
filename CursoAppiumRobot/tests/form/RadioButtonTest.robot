*** Settings ***
Resource        ../../resources/navbar/NavResource.robot
Resource        ../../resources/form/RadioButtonResource.robot
Resource        ../../resources/CommomResource.robot
Resource    ../../resources/form/FormResource.robot
Suite Setup        Start Application
Suite Teardown        Stop Application

*** Test Case ***
Choose Python as language in the input form
    Go to the main screen
    Click on the navigation menu
    Assure that the navigation menu is showing on the screen
    Click on the "INPUTS" menu
    Assure that the input page was opened
    Click on the "BOTÕES DE RADIO" card
    Assure that the Botoes de Radio page is showing
    Click on the Python radio button
    Assure that the radio button was checked correctly
    