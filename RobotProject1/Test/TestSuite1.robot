*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside TEST SUITE SETUP
Suite Teardown    Log    I am inside TEST SUITE TEARDOWN
Test Setup    Log    I am inside TEST SETUP
Test Teardown    Log    I am inside TEST TEARDOWN       

*** Test Cases ***
TestOne
    Log    Hello World!
    
FirstSeleniumTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Input Text      name=q                Selenium
    Press Keys    name=q    ENTER
    # Click Button    name="btnk"       
    Sleep    3    
    Close Browser
    Log    Test Completed
    
SamlpleLoginTest
    [Documentation]       SAMPLE LOGIN TEST
    Open Browser          ${URL}    chrome
    Set Browser Implicit Wait    15
    LoginKW
    Click Element     id=welcome
    Click Element     id=welcome
    Click Element     id=welcome                 
    Click Element     link=Logout
    Sleep    3
    Close Browser
    Log               This test was executed by %{username} on %{os}
    
*** Variables ***
${URL}     https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}   Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text        id=txtUsername    &{LOGINDATA}[username] 
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button      id=btnLogin
    