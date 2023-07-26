*** Settings ***
Documentation    To validate the Login Form
Library    SeleniumLibrary

*** Test Cases ***
Validade Unsuccessful Login
  Open the browser with the Mortgate payment url
  Fill the login Form
  Wait until it checks and display error message
  Verify if error message is correct

*** Keywords ***
Open the browser with the Mortgate payment url
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagePractise/

Fill the login Form
    Input Text        id:username    kellysirqueira
    Input Password    id:password    123344423    
    Click Button      signInBtn

Wait until it checks and display error message
    Wait Until Element Is Visible    css:.alert-danger
Verify if error message is correct
  ${result}=  Get Text    css:.alert-danger
  Should Be Equal As Strings    ${result}    Incorrect username/password.

    

