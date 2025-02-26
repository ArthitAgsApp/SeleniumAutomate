*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/LoginPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrlTest}    chrome
Suite Teardown     Close Browser


*** Test Cases ***                 
As a user, I want to login success with valid credential
    When user login to future skill platform with ${username} and ${valid_password} 
    Then future skill should display home page and display message as "ระบบขาย/สต๊อค"
    [Teardown]

As a user, I fail to login with invalid credential
    When user login to future skill platform with ${username} and ${invalid_password}
    Then future skill should display display validate login fail message as "ส่วนของลูกค้า"