*** Settings ***
Resource        ../../resources/navbar/NavResource.robot
Resource        ../../resources/form/FormResource.robot
Resource        ../../resources/CommomResource.robot
Suite Setup        Start Application
Suite Teardown        Stop Application

*** Variables ***
&{USER}        name=Ana Cortez
...            email=ana@email.com
...            password=muitoDifícil0
...            profile=QA

*** Test Case ***
Fill a new registration form
    Go to the main screen
    Click on the navigation menu
    Assure that the navigation menu is showing on the screen
    Click on the "FORM" menu
    Assure that the Form page was opened
    Click on the "CADASTRO" card
    Assure that the regstration form is showing
    Input the user name into the textfield        ${USER.name}
    Input the user email into the textfield        ${USER.email}
    Input the user password into the textfield        ${USER.password}
    Click on the listbox to select option        ${USER.profile}
    Click on the register button
    Assure a confirmation message pops up