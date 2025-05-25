*** Settings ***
Documentation    Test complete login functionality
Library    SeleniumLibrary
Test Template    Login with different combination of user name and password
Test Setup    Open Browser          ${URL}          ${Browser_name}
Test Teardown    Close Browser
Resource    Resources/Login.robot
Library   DataDriver    file=Resources/file.csv    encoding=utf_8    dialect=unix


*** Variables ***
${URL}    https://practicetestautomation.com/practice-test-login/
${Browser_name}    Chrome

*** Test Cases ***
Login with different combination of user name and password

    
*** Test Cases ***
Valid user name with valid password    ${username1}    ${password1}

