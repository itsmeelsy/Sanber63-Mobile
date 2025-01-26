*** Settings ***
Documentation        Home page keyword related
Variables            home-page-locators.yaml


*** Keywords ***

Verify Home Screen Appears
    Wait Until Element Is Visible    locator=${app_icon_image}

Click Sign In Button On Homescreen
    Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]