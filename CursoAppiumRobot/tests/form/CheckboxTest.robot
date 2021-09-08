*** Settings ***
Resource        ../../resources/navbar/NavResource.robot
Resource        ../../resources/form/CheckboxResource.robot
Resource        ../../resources/CommomResource.robot
Resource    ../../resources/form/FormResource.robot
Suite Setup        Start Application
Suite Teardown        Stop Application

*** Test Case ***
Choose Python as language in the input form
    Go to the main screen
    Click on the navigation menu
    Assure that the navigation menu is showing on the screen
    Click on the "INPUT" menu
    Click on the "CHECKBOX" card
    Assure that the checkbox page is showing
    Click on the Robot Framework checkbox
    Assure that the checkbox was checked correctly