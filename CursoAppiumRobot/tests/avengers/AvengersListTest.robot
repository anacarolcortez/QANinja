*** Settings ***
Resource        ../../resources/navbar/NavResource.robot
Resource        ../../resources/avengers/AvengersListResource.robot
Resource        ../../resources/CommomResource.robot
Resource    ../../resources/form/FormResource.robot
Suite Setup        Start Application
Suite Teardown        Stop Application

*** Test Case ***
Delete Captain America from avengeres list
    Go to the main screen
    Click on the navigation menu
    Assure that the navigation menu is showing on the screen
    Click on the "AVENGERS" menu
    Assure that the avengers page was opened
    Click on the "LISTA" card
    Assure that the avengers list page is showing
    Swipe Captain America card
    Press delete button
