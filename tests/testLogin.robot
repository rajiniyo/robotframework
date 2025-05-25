*** Settings ***
Library           SeleniumLibrary
Resource          resources/testKeywords.robot
Resource          variables/testNewData.robot

*** Test Cases ***
Login With Valid Credentials
    [Tags]    Smoke    Login
    Open Browser To Login Page
    Input Text    ${username_field}    ${valid_username}
    Input Text    ${password_field}    ${valid_password}
    Click Button  ${login_button}
    Wait Until Element Is Visible    ${dashboard_header}
    Page Should Contain Element    ${dashboard_header}
    Close Browser

Dashboard Menu Navigation
    [Tags]    Regression    Dashboard
    Open Browser To Login Page
    Perform Valid Login
    Click Element       ${menu_reports}
    Page Should Contain Element    ${report_header}
    Close Browser