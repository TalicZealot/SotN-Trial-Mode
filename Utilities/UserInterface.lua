function initForm(commonVariables, saveData, guiForm, settings)
    guiForm.mainForm = forms.newform(236, 580, "Castlevania: SOTN Trial Mode")
    guiForm.interfaceCheckboxConsistency = forms.checkbox(guiForm.mainForm, "Consistency training mode", 10, 10)
    forms.setproperty(guiForm.interfaceCheckboxConsistency, "Checked", settings.consistencyTraining)
    guiForm.interfaceCheckboxContinue = forms.checkbox(guiForm.mainForm, "Auto advance to next trial", 10, 30)
    forms.setproperty(guiForm.interfaceCheckboxContinue, "Checked", settings.autoContinue)
    guiForm.interfaceCheckboxRendering = forms.checkbox(guiForm.mainForm, "Rendering mode PixelPro", 10, 50)
    forms.setproperty(guiForm.interfaceCheckboxRendering, "Checked", settings.renderPixelPro)
    forms.label(guiForm.mainForm, "Alucard Trials:", 10, 80, 220, 20)
    guiForm.alucardTrialRichterSkipButton = forms.button(guiForm.mainForm, "Richter Skip   cleared:" .. saveData["alucardTrialRichterSkip"], function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 1
    end, 10, 102, 200, 20)
    guiForm.alucardTrialFrontslideButton = forms.button(guiForm.mainForm, "Frontslide   cleared:" .. saveData["alucardTrialFrontslide"], function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 2
    end, 10, 124, 200, 20)
    guiForm.alucardTrialAutodashButton = forms.button(guiForm.mainForm, "Autodash   cleared:" .. saveData["alucardTrialAutodash"], function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 3
    end, 10, 146, 200, 20)
    guiForm.alucardTrialFloorClipButton = forms.button(guiForm.mainForm, "Floor Clip   cleared:" .. saveData["alucardTrialFloorClip"], function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 4
    end, 10, 168, 200, 20)
    forms.label(guiForm.mainForm, "Alucard Challenges:", 10, 190, 220, 20)
    guiForm.alucardChallengeShieldDashSpeedButton = forms.button(guiForm.mainForm, "ShieldDashing avg spd   cleared:" .. saveData["alucardChallengeShieldDashSpeed"], function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 5
    end, 10, 212, 200, 20)
    guiForm.alucardChallengeForceOfEchoTimeTrialButton = forms.button(guiForm.mainForm, "Force of Echo time trial   cleared:"  .. saveData["alucardChallengeForceOfEchoTimeTrial"], function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 6
    end, 10, 234, 200, 20)
    forms.button(guiForm.mainForm, "", function(x)
        commonVariables.trialData = nil
        commonVariables.currentTrial = 1
    end, 10, 256, 200, 20)
    forms.button(guiForm.mainForm, "", function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 1
    end, 10, 278, 200, 20)
    forms.label(guiForm.mainForm, "Richter Trials:", 10, 300, 220, 20)
    guiForm.richterTrialSlidingAirslashButton = forms.button(guiForm.mainForm, "Sliding Airslash   cleared:" .. saveData["richterTrialSlidingAirslash"], function(x)
        commonVariables.trialData.moves = nil
        commonVariables.currentTrial = 7
    end, 10, 322, 200, 20)
    guiForm.richterTrialVaultingAirslashButton = forms.button(guiForm.mainForm, "Vaulting Airslash   cleared:" .. saveData["richterTrialVaultingAirslash"], function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 8
    end, 10, 344, 200, 20)
    guiForm.richterTrialOtgAirslashButton = forms.button(guiForm.mainForm, "Otg Airslash   cleared:" .. saveData["richterTrialOtgAirslash"], function(x) --richterTrialOtgAirslash
        commonVariables.trialData = {}
        commonVariables.currentTrial = 9
    end, 10, 368, 200, 20)
    forms.button(guiForm.mainForm, "", function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 1
    end, 10, 390, 200, 20)
    forms.label(guiForm.mainForm, "Richter Challenges:", 10, 412, 220, 20)
    guiForm.richterChallengeMinotaurRoomTimeTrialButton = forms.button(guiForm.mainForm, "Minotaur Room   cleared:"  .. saveData["richterChallengeMinotaurRoomTimeTrial"], function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 10
    end, 10, 434, 200, 20)
    forms.button(guiForm.mainForm, "", function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 1
    end, 10, 456, 200, 20)
    forms.button(guiForm.mainForm, "", function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 1
    end, 10, 478, 200, 20)
    forms.button(guiForm.mainForm, "", function(x)
        commonVariables.trialData = {}
        commonVariables.currentTrial = 1
    end, 10, 500, 200, 20)


    forms.setproperty(guiForm.interfaceCheckboxConsistency, "Width", 200)
    forms.setproperty(guiForm.interfaceCheckboxContinue, "Width", 200)
    forms.setproperty(guiForm.interfaceCheckboxRendering, "Width", 200)
end
function updateForm(saveData, guiForm)
    forms.settext(guiForm.alucardTrialRichterSkipButton,  "Richter Skip   cleared:" .. saveData["alucardTrialRichterSkip"])
    forms.settext(guiForm.alucardTrialAutodashButton,  "Autodash   cleared:" .. saveData["alucardTrialAutodash"])
    forms.settext(guiForm.alucardTrialFrontslideButton,  "Frontslide   cleared:" .. saveData["alucardTrialFrontslide"])
    forms.settext(guiForm.alucardTrialAutodashButton,  "Autodash   cleared:" .. saveData["alucardTrialAutodash"])
    forms.settext(guiForm.alucardTrialFloorClipButton,  "Floor Clip   cleared:" .. saveData["alucardTrialFloorClip"])
    forms.settext(guiForm.alucardChallengeShieldDashSpeedButton,  "Shield Dashing average speed   cleared:" .. saveData["alucardChallengeShieldDashSpeed"])
    forms.settext(guiForm.alucardChallengeForceOfEchoTimeTrialButton,  "Force of Echo time trial   cleared:" .. saveData["alucardChallengeForceOfEchoTimeTrial"])
    forms.settext(guiForm.richterTrialSlidingAirslashButton,  "Sliding Airslash   cleared:" .. saveData["richterTrialSlidingAirslash"])
    forms.settext(guiForm.richterTrialVaultingAirslashButton,  "Vaulting Airslash   cleared:" .. saveData["richterTrialVaultingAirslash"])
    forms.settext(guiForm.richterTrialOtgAirslashButton,  "Otg Airslash   cleared:" .. saveData["richterTrialOtgAirslash"])
    forms.settext(guiForm.richterChallengeMinotaurRoomTimeTrialButton,  "Minotaur Room   cleared:" .. saveData["richterChallengeMinotaurRoomTimeTrial"])
end

function updateSettings(settings, interfaceCheckboxConsistency, interfaceCheckboxContinue, interfaceCheckboxRendering)
    if forms.ischecked(interfaceCheckboxConsistency) then
        settings.consistencyTraining = true
    else
        settings.consistencyTraining = false
    end
    if forms.ischecked(interfaceCheckboxContinue) then
        settings.autoContinue = true
    else
        settings.autoContinue = false
    end
    if forms.ischecked(interfaceCheckboxRendering) then
        settings.renderPixelPro = true
    else
        settings.renderPixelPro = false
    end
end