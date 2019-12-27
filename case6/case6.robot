*** Settings ***
Library     Selenium2Library
Library     Collections
Library     OperatingSystem
Library     String 
Resource                  ../Keyword.robot

*** Variables ***
${CorpusWeb}       http://localhost:3000/ 
${Browser}         chrome

*** Test Cases ***
Verify log out button
    Open Website
    AND Click Login
    AND Click Cat project
    AND Click Tagging 
    AND Click Logout
    AND Close Website

*** Keywords ***
Click Log out
    Wait Until Element Is Visible   //*[@id="root"]/div/div[1]/div/div/span/a
    Click Element                   //*[@id="root"]/div/div[1]/div/div/span/a
    Sleep  3  s




