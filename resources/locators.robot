*** Variables ***
# Login Page
${username_field}     id=username
${password_field}     id=password
${login_button}       id=submit

# Dashboard
${dashboard_header}   xpath=//h1[text()='Logged In Successfully']
${menu_reports}       xpath=//a[text()='Home']
${report_header}      css=.header-middle
${test1}              id=user
${test2}              css=user2


