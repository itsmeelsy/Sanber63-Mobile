*** Settings ***
Documentation        Home page keyword related
Variables            login-page-locators.yaml

*** Keywords ***

Input Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username_login_input}
    Input Text    ${username_login_input}    ${username}

Input Password
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    abc123

Click Sign In Button on Login Screen
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Successfully Login
    Wait Until Element Is Visible    //android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]