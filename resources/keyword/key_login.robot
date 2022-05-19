*** Settings ***
Library     AppiumLibrary
Library     BuiltIn
Library     OperatingSystem
Library     String
Library     FakerLibrary
Library     SikuliLibrary
Resource    ../common/core.robot
Resource    /Users/calib/Documents/Sandata/PycharmProjects/sandata-mobile-connect/page_object/po_login.robot
Resource    ../keyword/login_ui_component.robot
*** Variables ***

@{companyId_data}      2-10011  2-11101  2-11011
@{username_data}    krishankumar.mohan@mailinator.com   krishankumar@mailinator.com     krishan.mohan@mailinator.com
@{password_data}     Sandatacalibraint&789      Sandata789#     Sandatacalibraint6789@


*** Keywords ***
LaunchApp
            OpenSandataApp
            Sandata Logo Splash or Not

To Verify Login Screen Contains Elements

            Check Whether Sandata Logo Present or Not
            Check Whether CompanyId Input Field Box Present or Not
            Check Whether Username Input Field Box Present or Not
            Check Whether Password Input Field Boc Present or Not
            Check Whether LogIn Button Present or Not
            Forget Password Present or Not
            Application Version Present or Not
            Privacy Policy Present or Not
            Finger Pirint lock Prsent or Not


To Validate Login Sandata

            LaunchApp
            Location Allow Popup or Not
            AppiumLibrary.Wait Until Page Contains Element    ${locationAllow}   30s
            AppiumLibrary.Click Element    ${locationAllow}
            #To Verify Login Screen Contains Elements
            AppiumLibrary.Wait Until Page Contains Element    ${companyid}   10s
            AppiumLibrary.Input Text    ${companyid}   ${companyId_data}[0]
            AppiumLibrary.Input Text    ${userName}          ${username_data}[0]
            AppiumLibrary.Input Text    ${password}           ${password_data}[0]
            AppiumLibrary.Click Element    ${LoginIn}
            AppiumLibrary.Wait Until Page Contains Element    ${callAllow}
            AppiumLibrary.Click Element    ${callAllow}
            AppiumLibrary.Wait Until Page Contains Element    ${enableFingerprint}   15s
            AppiumLibrary.Click Element    ${enableFingerprint}
            AppiumLibrary.Wait Until Page Contains Element    ${passwordExpire}      15s
            AppiumLibrary.Click Element    ${passwordExpire}
            Sleep    5
            Navigate Login page to Language Select Page
            Scroll to continue
            #AppiumLibrary.Element Attribute Should Match    ${englishLang}    checked    true
            AppiumLibrary.Wait Until Page Contains Element  ${select}   30s
            AppiumLibrary.Click Element    ${select}
            AppiumLibrary.Wait Until Page Contains Element    ${languageConfirm}   10s
            AppiumLibrary.Click Element    ${languageConfirm}


To validate SignOut in SMC
            AppiumLibrary.Wait Until Page Contains Element    ${menu}
            AppiumLibrary.Click Element    ${menu}
            Sandata_Menu_Setting
            AppiumLibrary.Wait Until Page Contains Element    ${fingerPrintEnable}    10s
            AppiumLibrary.Click Element    ${fingerPrintEnable}
            AppiumLibrary.Wait Until Page Contains Element    ${signOut}    10s
            AppiumLibrary.Click Element    ${signOut}
            AppiumLibrary.Wait Until Page Contains Element    ${out}    10s
            AppiumLibrary.Click Element    ${out}
            AppiumLibrary.Wait Until Page Contains Element    ${fingerLockEnable}   10s
            AppiumLibrary.Click Element    ${fingerLockEnable}
            AppiumLibrary.Wait Until Page Contains Element    ${print1}
            AppiumLibrary.Click Element    ${print1}

To Search Client

             AppiumLibrary.Wait Until Page Contains Element    ${searchClient}  10s
             AppiumLibrary.Input Text    ${searchClient}    429667
             AppiumLibrary.Wait Until Page Contains Element     ${search}   10s
             AppiumLIbrary.Click Element    ${search}


To Start Unknown Visit
                
              AppiumLibrary.Wait Until Page Contains Element    ${startUnknownVisit}    10s
              AppiumLibrary.Click Element    ${startUnknownVisit}
              AppiumLibrary.Wait Until Page Contains Element    ${firstName}    10s
              AppiumLibrary.Input Text    ${firstName}    jerry
              AppiumLibrary.Input Text    ${lastName}    sole
              AppiumLibrary.Input Text    ${medicaidId}    123456
              AppiumLibrary.Click Element    ${startVisit}
              AppiumLibrary.Wait Until Page Contains Element    ${personlCareDay}
              AppiumLibrary.Click Element    ${personlCareDay}
              Scroll to StartVisit
              AppiumLibrary.Wait Until Page Contains Element    ${startVisit}   30s
              AppiumLibrary.Click Element    ${startVisit}
              Sleep    5
              AppiumLibrary.Wait Until Page Contains Element    ${home}
              AppiumLibrary.Click Element    ${home}
              AppiumLibrary.Click Element    ${continue}
              SikuliLibrary.Wait Until Screen Contain    yes_click.png    30
              SikuliLibrary.Click    yes_click.png
              Sleep    3

To Validate Confirm My Visit
              AppiumLibrary.Wait Until Page Contains Element    ${menu}     20s
              AppiumLibrary.Click Element    ${menu}
              SikuliLibrary.Wait Until Screen Contain    my_visit.png    20
              SikuliLibrary.Click    my_visit.png
              SikuliLibrary.Wait Until Screen Contain    my_visit_home_page.png    20



Scroll to continue

               FOR    ${counter}    IN RANGE    0      5
               Swipe    0    495    0    100
               ${counter}=  Set Variable  ${counter}+1
               Exit For Loop If    ${counter}==5
               END

Scroll to StartVisit

               FOR    ${counter}    IN RANGE    0      13
               Swipe    0    600    0    100
               ${counter}=  Set Variable  ${counter}+1
               Exit For Loop If    ${counter}==13
               END













