*** Settings ***
Documentation    Heads WFH attendnce
Library     SeleniumLibrary

*** Test Cases ***
Login to Heads
    open heads
    Enter Userid and password
    Click Leave

*** Keywords ***
Open Heads
    Open Browser    https://heads.thinkpalm.info/   chrome
Enter Userid and password
    input text      id:txtUserName    julie.g
    input text      id:txtPassword    Think#june21
    click element    id:btnLogin
Click Leave
    click element    //div/input[@title="Leave"]
    click element    //ul[@runat="server"]/li[4]
    wait until element is visible    //ul[@runat="server"]/li[4]//li[1]
    click element    //ul[@runat="server"]/li[4]//li[1]
    wait until element is visible    //input[@value="Save"]
    click element    //input[@value="Save"]
