*** Settings ***
Resource        ../../resources/home/HomeResource.robot
Resource        ../../resources/CommomResource.robot
Suite Setup        Start Application
Suite Teardown        Stop Application

*** Test Cases ***
Assure that the app shows the main screen
    Assure the main screen shows the text         Training Wheels Protocol
    Assure the main screen shows the text         Mobile Version

Click on start button to show navigation menu
    Assure the button "COMEÇAR" is visible
    Click on the button "COMEÇAR"
    Assure the navigation menu is showing on the screen