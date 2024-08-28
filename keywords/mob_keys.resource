*** Settings ***
Library     AppiumLibrary

*** Keywords ***

Open Calc
        Sleep      30s
        AppiumLibrary.Open Application    http://127.0.0.1:4723/wd/hub
        ...    platformName=Android
        ...    deviceName=emulator-5554
        ...    appPackage=com.google.android.calculator
        ...    appActivity=com.android.calculator2.Calculator
        ...    platformVersion=13
        ...    automationName=UiAutomator2
        ...    newCommandTimeout=450000
        ...    uiautomator2ServerLaunchTimeout=200000
        ...    adbExecTimeout=50000

Close Calc
        AppiumLibrary.Close Application
