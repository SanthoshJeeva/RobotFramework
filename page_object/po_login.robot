*** Settings ***
Documentation       LoginPOM
Resource             ../page_object/po_menu.robot
*** Variables ***

${callAllow}         //android.widget.Button[@text="ALLOW"]
${userName}    //android.widget.EditText[@resource-id='inputUserName']
${password}     //android.widget.EditText[@resource-id='inputPassword']
${companyid}    //android.widget.EditText[@resource-id='inputCompId']
${LoginIn}     //android.widget.Button[@text="LOG IN"]
${locationAllow}   //android.widget.Button[@text="ALLOW"]
${information}  //android.widget.Button[@text="ok"]
${enableFingerprint}   //android.widget.Button[@text="no"]
${passwordExpire}      //android.widget.Button[@text="continue"]
${languageSelect}      //android.widget.Button[@text="continue"]
${languageConfirm}     //android.widget.Button[@text="confirm"]
${select}               //android.widget.Button[@text="continue"]
${englishLang}         //android.widget.RadioButton[@text="English"]
${sandataLogo}     //android.widget.Image[@text="Sandata Logo"]
${companyIdLabel}     //android.widget.TextView[@text="Company ID asterisk. required"]
${serNameLabel}      //android.widget.TextView[@text="Username asterisk. required"]
${passwordLabel}       //android.widget.TextView[@text="Password asterisk. required"]

${forgotPassword}      //android.widget.Button[@text="FORGOT PASSWORD?"]
${appVersion}          //android.widget.TextView[@text="2.0.239"]
${sandataName}         //android.widget.TextView[@text="© 2022 Sandata Technologies, LLC"]

${print1}               //android.widget.ImageView[@resource-id="com.android.systemui:id/fingerprint_icon"]

