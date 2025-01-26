*** Settings ***
Resource        ../PageObjects/base.robot
Resource        ../PageObjects/homePage/homePage.robot
Resource        ../PageObjects/loginPage/loginPage.robot
#Test Setup    Open Flight Application
Test Setup    Run Keywords        Open Flight Application    AND    Verify Home Screen Appears
Test Teardown    Close Flight Application

*** Test Cases ***

User should be able to login with valid data
    Click Sign In Button On Homescreen
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In Button on Login Screen
    Verify User Successfully Login

User should be able to login with invalid data
    Click Sign In Button On Homescreen
    Input Username    username=support123@ngendigital.com
    Input Password
    Click Sign In Button on Login Screen
    Verify User Successfully Login