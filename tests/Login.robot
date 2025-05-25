*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${username1}      student
${password1}      Password123

*** Keywords ***
Login with different combination of user name and password

    [Arguments]    ${username}    ${password}
    Input Text            username         ${username}
    Input Password        password         ${password}
    Click Button          submit

Valid user name with valid password
    [Arguments]    ${username1}    ${password1}
    Input Text            username         ${username1}
    Input Password        password         ${password1}
    Click Button          submit
    Element Text Should Be    //h1[text()='Logged In Successfully']    Logged In Successfully
