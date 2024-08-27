*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open Hotel
    SeleniumLibrary.Open Browser
    ...    url=https://adactinhotelapp.com/
    ...    browser=chrome
    ...    options=add_argument("--headless"); add_argument("--no-sandbox"); add_argument('--disable-dev-shm-usage'); add_argument("--ignore-certificate-errors")
    SeleniumLibrary.Maximize Browser Window
    Sleep    10s