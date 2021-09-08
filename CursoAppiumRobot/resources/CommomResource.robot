*** Settings ***
Library        AppiumLibrary
Resource        home/HomeResource.robot

*** Variables ***
${URL_SERVER}        http://localhost:4723/wd/hub


*** Keywords ***
Start Application
    Open Application        ${URL_SERVER}
    ...                    automationName=UiAutomator2
    ...                    platformName=Android
    ...                    deviceName=Android Emulator
    ...                    app=${EXECDIR}/CursoAppiumRobot/app/twp.apk
    ...                    udid=emulator-5554

Stop Application
    Close Application

Go to the main screen
    Assure the button "COMEÇAR" is visible
    Click on the button "COMEÇAR"
    Assure the navigation menu is showing on the screen