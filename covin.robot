*** Settings ***
Library    extendedselenium2library
Library    SeleniumLibrary
Library    OperatingSystem
Library    String

*** Test Cases ***
Open URL
    Load Browser
*** Keywords ***

Load Browser
    Open Browser    https://www.cowin.gov.in/   chrome
    maximize browser window
    click element    //a[@title="Register / Sign In"]
    switch window    Co-WIN Application
    input text      id:mat-input-0    9769624840
    Sleep   3s
    click element    //div[@class="covid-button-desktop ion-text-center"]
    sleep    16s
    click element    //div[@class="covid-button-desktop ion-text-center"]
    sleep    7s
    scroll element into view      //a[@aria-label="Add Member"]
#    sleep    7s
    Wait Until Element is visible    //ion-row[3]//span[@class="m-lablename accessibility-plugin-ac"]
#    sleep    3s
    Set Focus To Element     //ion-row[3]//span[@class="m-lablename accessibility-plugin-ac"]
    click element    //ion-row[3]//span[@class="m-lablename accessibility-plugin-ac"]
    sleep    3s
    wait until element is visible    //button[@data-checked="Search By District"]
    click button    //button[@data-checked="Search By District"]
    sleep    2s
    wait until element is visible    id:mat-select-0
    click element    id:mat-select-0
    click element      id:mat-option-17
    sleep    3s
    wait until element is visible    id:mat-select-2
    click element   id:mat-select-2
    scroll element into view     id:mat-option-47
    click element   id:mat-option-47
    sleep    3s
    wait until element is visible    //ion-button[@type="submit"]
    click element    //ion-button[@type="submit"]
