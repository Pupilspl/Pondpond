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
Verify document button 
    Open Website
    AND Click Login
    AND Click Cat project
    AND Click Document 
    AND Close Website

*** Keywords ***
Click Document 
    Wait Until Element Is Visible   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[2]
    Click Element                   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[2]
    Sleep  3  s




