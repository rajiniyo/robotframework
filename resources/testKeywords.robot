*** Settings ***
Library    SeleniumLibrary
Resource    variables/testNewData.robot
Resource    resources/locators.robot

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${base_url}    Chrome


Perform Valid Login
    Input Text    ${username_field}    ${valid_username}
    Input Text    ${password_field}    ${valid_password}
    Click Button       ${login_button}
    Wait Until Element Is Visible    ${dashboard_header}