*** Settings ***
Library     Selenium2Library
Library     Collections
Library     OperatingSystem
Library     Screenshot 
Resource                  ../Keyword.robot

*** Variables ***
${CorpusWeb}       http://localhost:3000/ 
${Browser}         chrome

*** Test Cases ***
Verify structure button 
    Open Website
    AND Click Login
    AND Click Cat project
    AND Click Structure 
    AND Close Website

*** Keywords ***
Click Structure
    Wait Until Element Is Visible   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[3]
    Click Element                   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[3]
    Sleep  3  s




