*** Settings ***
Library                   
Resource                  ../Keyword.robot


*** Variables ***
${CorpusWeb}       http://localhost:3000/ 
${Browser}         chrome

*** Test Cases ***
Verify Save button
    Open Website
    AND Click Login
    AND Click cat project
    AND Click tagging
    AND Click Name document
    AND Click First and last character of sentence
    AND Click segment
    AND Click save
    AND Click Word Tagging
    AND Click word first
    AND Tag Entity
    AND Close Browser

*** Keywords ***
Click First and last character of sentence
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/div[3]/div[2]/span[157]
    Sleep  2  s
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/div[3]/div[2]/span[223]
    Sleep  2  s

Click Segment
    Click Element                   //*[@id="root"]/div/div[2]/div[3]/div[1]/button
    Sleep  3  s

Click Save
    Click Element                  //*[@id="root"]/div/div[2]/div[2]/div[2]/button
    Sleep  3  s

Click Word Tagging
    Click Element                   //*[@id="root"]/div/div[2]/div[2]/div[2]/p[2]
    Sleep  3  s

Click Save
    Click Element                  //*[@id="root"]/div/div[2]/div[2]/div[2]/button
    Sleep  3  s

Click word first 
    Click Element       //*[@id="root"]/div/div[2]/div[2]/div[3]/div[2]/span[627]
    Sleep  2  s
    
Tag Entity
    Click Element       //*[@id="root"]/div/div[2]/div[3]/div/div[2]/div/div/div/div/div[2]/div/div/div/div/div[2]/h/span[2]
    Sleep  2  s

Close Website
    Close Browser