*** Settings ***
Library     Selenium2Library

*** Keywords ***
Open Website
    Open Browser    ${CorpusWeb}    ${Browser}
    Maximize Browser Window

Click Login
    Wait Until Element Is Visible   //*[@id="root"]/div/div/div/a[2]
    Click Element                   //*[@id="root"]/div/div/div/a[2]
    Sleep  3  s

Click Cat project
    Wait Until Element Is Visible   //*[@id="root"]/div/div[3]/div/div[3]/div/div[1]/div
    Click Element                   //*[@id="root"]/div/div[3]/div/div[3]/div/div[1]/div
    Sleep  3  s

Click Tagging
    Wait Until Element Is Visible   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[4]
    Click Element                   //*[@id="root"]/div/div[2]/div[1]/div/div/div/a[4]
    Sleep  3  s

Click Name document
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/table/tbody/tr/td[1]/div
    Sleep  3  s

Close Website
    Close Browser