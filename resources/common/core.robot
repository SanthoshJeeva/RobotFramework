*** Settings ***
Library         AppiumLibrary

*** Variables ***
${port}         http://localhost:4723/wd/hub
${platform}     Android
${device}       5613cebd
${appPackage}   com.sandata.mvvhybrid.qa
${appActivity}  com.sandata.mvvhybrid.qa.MainActivity
*** Keywords ***
OpenSandataApp

            AppiumLibrary.Open Application    ${port}
            ...                 platformName=${platform}
            ...                 deviceName=${device}
            ...                 appPackage=${appPackage}
            ...                 appActivity=${appActivity}
            ...                 platformVersion=9
            ...                 automationName=Appium


