*** Settings ***
Documentation       SearchClient

*** Variables ***

${searchClient}         //android.widget.EditText[@resource-id='inputSearchClient']
${search}               //android.widget.Button[@text="search client"]
${startUnknownVisit}    //android.widget.Button[@text="start unknown visit"]

${firstName}            //android.widget.EditText[@resource-id="inputFirstName"]
${lastName}             //android.widget.EditText[@resource-id="inputLastName"]
${medicaidId}           //android.widget.EditText[@resource-id="inputMedId"]

${startVisit}           //android.widget.Button[@text="start visit"]
${startGroupVisit}      //android.widget.Button[@text="start group visit"]
${joinGroupVisit}       //android.widget.Button[@text="JOIN GROUP VISIT"]
${cancel}               //android.widget.Button[@text="cancel"]


# Service Selection

${personlCareDay}          //android.widget.RadioButton[@text="3.2 Personal Care Day"]
${visit}                   //android.widget.Button[@text="start visit"]
${home}                    //android.widget.RadioButton[@text="Home"]
${continue}               //android.widget.Button[@text="continue"]

${addTasks}               //android.widget.Button[@text="Add Tasks"]



