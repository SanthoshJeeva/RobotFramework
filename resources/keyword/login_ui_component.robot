*** Settings ***
Documentation       Sandata Login Page UI Component
Library             SikuliLibrary
Library             AppiumLibrary
*** Variables ***
${imagePath}        /Users/calib/Documents/Sandata/PycharmProjects/sandata-mobile-connect/test_data/sikuli_img_dependencies

*** Keywords ***

Add to image path

                            SikuliLibrary.Add Image Path    ${imagePath}

Sandata Logo Splash or Not

                            Add to image path
                            SikuliLibrary.Wait Until Screen Contain    sandata_splash_screen.png    10
                            SikuliLibrary.Screen Should Contain    sandata_splash_screen.png

Location Allow Popup or Not

                            SikuliLIbrary.Wait Until Screen Contain    location_access_splash_screen.png    35
                            SikuliLibrary.Exists    location_access_splash_screen.png

Check Whether Sandata Logo Present or Not

                            SikuliLibrary.Wait Until Screen Contain    sandata_logo.png    10
                            SikuliLibrary.Screen Should Contain    sandata_logo.png

Check Whether CompanyId Input Field Box Present or Not

                            SikuliLibrary.Wait Until Screen Contain    company_id.png    10
                            SikuliLibrary.Screen Should Contain    company_id.png

Check Whether Username Input Field Box Present or Not

                            SikuliLibrary.Wait Until Screen Contain    username.png    10
                            SikuliLibrary.Screen Should Contain    username.png


Check Whether Password Input Field Boc Present or Not

                            SikuliLibrary.Wait Until Screen Contain    password.png    10
                            SikuliLibrary.Screen Should Contain    password.png

Check Whether LogIn Button Present or Not

                            SikuliLIbrary.Wait Until Screen Contain    log_in.png    10
                            SikuliLIbrary.Screen Should Contain    log_in.png

Forget Password Present or Not

                            SikuliLibrary.Wait Until Screen Contain    forget_password.png    10
                            SikuliLibrary.Screen Should Contain    forget_password.png

Application Version Present or Not

                            SikuliLibrary.Wait Until Screen Contain    sandata_tech.png    10
                            SikuliLibrary.Screen Should Contain    sandata_tech.png


Privacy Policy Present or Not
                            AppiumLibrary.Swipe    0    479    0    100
                            SikuliLibrary.Wait Until Screen Contain    privacy_policy.png    10
                            SikuliLibrary.Screen Should Contain    privacy_policy.png

Finger Pirint lock Prsent or Not

                            SikuliLIbrary.Wait Until Screen Contain    finger_print_lock.png    10
                            SikuliLIbrary.Screen Should Contain    finger_print_lock.png

Navigate Login page to Language Select Page
                            
                            SikuliLibrary.Wait Until Screen Contain    language_select_screen.png    10
                            SikuliLibrary.Screen Should Contain    language_select_screen.png
                            ${Id}=       SikuliLibrary.Get Current Screen Id
                            ${screenId}=    Convert To String    ${Id}
                            Log     ${screenId}
                            ${result}=   Should Be Equal    ${screenId}    0
                            Log     ${result}

Sandata_Menu_Setting

                            SikuliLIbrary.Wait Until Screen Contain    setting.png    10
                            SikuliLibrary.Click    setting.png

