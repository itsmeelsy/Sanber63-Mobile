*** Settings ***
Library    AppiumLibrary


*** Keywords ***

# Open Flight App
# Verify Home Screen Appears
# Click Sign In Button
# Verify Login Screen Appears
# Input Username
# Input Password
# Click Sign In Button on Login Screen
# Verify User Successfully Login

Open Flight Application
    Open Application
    ...    remote_url=http://127.0.0.1:4723/wd/hub    
    ...    platformName=Android    
    ...    platformVersion=14.0    
    ...    deviceName=RRCT401SNQK    
    ...    appPackage=com.example.myapplication    
    ...    appActivity=com.example.myapplication.MainActivity

Verify Home Screen Appears
    Wait Until Element Is Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Close Flight Application
    Close Application


*** Test Cases ***

User should be able to login with valid data
    Open Flight Application
    Verify Home Screen Appears
    Close Flight Application