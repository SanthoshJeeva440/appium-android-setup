*** Settings ***
Library     AppiumLibrary

*** Keywords ***

Open Calc
        Open Application    remote_url=http://127.0.0.1:4723/wd/hub
        ...    platformName=Android
        ...    deviceName=emulator-5554
        ...    app=keywords/Calc.apk
        ...    platformVersion=13
        ...    automationName=UiAutomator2
        ...    autoGrantPermissions=true
        ...    noReset=false
        ...    newCommandTimeout=450000