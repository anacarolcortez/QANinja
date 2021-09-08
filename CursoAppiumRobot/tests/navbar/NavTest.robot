*** Settings ***
Resource        ../../resources/navbar/NavResource.robot
Resource        ../../resources/form/RadioButtonResource.robot
Resource        ../../resources/CommomResource.robot
Suite Setup        Start Application
Suite Teardown        Stop Application

*** Test Case ***
Click on the burger menu on the navigation bar
    Go to the main screen
    Click on the navigation menu
    Assure that the navigation menu is showing on the screen

Click on the form menu on the navigation bar
    Assure that the navigation menu is showing on the screen
    Click on the "FORM" menu
    Assure that the Form page was opened
    
Click on the input menu on the navigation bar
    Assure that the navigation menu is showing on the screen
    Click on the "INPUTS" menu
    Assure that the input page was opened

Click on the avengers menu on the navigation bar
    Assure that the navigation menu is showing on the screen
    Click on the "AVENGERS" menu
    Assure that the avengers page was opened