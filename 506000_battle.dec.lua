RegisterTableGoal(GOAL_NingunOsa_506000_Battle, "GOAL_NingunOsa_506000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_NingunOsa_506000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetHpRate(TARGET_SELF)
    local local4 = arg1:GetSp(TARGET_SELF)
    local local5 = arg1:GetDist(TARGET_ENE_0)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local8 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110125)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3506000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3506030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3506004)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3506021)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3506080)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3506022)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 3506030) or arg1:HasSpecialEffectId(TARGET_SELF, 3506080) then
        local0[26] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200051) and arg1:GetNumber(3) == 0 then
        local0[42] = 100
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            local0[21] = 1
            local0[28] = 100
        else
            local0[21] = 100
        end
    elseif Common_ActivateAct(arg1, arg2, 0, 1) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3506040) then
            if 8 < local5 then
                local0[39] = 200
            else
                local0[37] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
            local0[40] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            if 7 < local5 then
                local0[21] = 100
                local0[30] = 1
                local0[31] = 1
            elseif 5 < local5 then
                local0[21] = 1
                local0[30] = 100
                local0[31] = 50
            else
                local0[21] = 1
                local0[30] = 100
                local0[31] = 1
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            if 6.5 <= local5 then
                local0[11] = 100
            else
                local0[3] = 100
            end
        elseif 30 <= arg1:GetNumber(5) then
            if 3 <= local5 then
                local0[23] = 100
            else
                local0[7] = 100
                local0[24] = 100
            end
        elseif arg1:IsFinishTimer(1) and arg1:HasSpecialEffectId(TARGET_SELF, 200051) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) == false and local5 <= 12 and 3 <= local5 then
            local0[20] = 100
        elseif 10 <= local5 then
            local0[1] = 0
            local0[3] = 0
            local0[4] = 0
            local0[6] = 100
            local0[8] = 200
            local0[9] = 150
            local0[10] = 0
            local0[11] = 100
            local0[12] = 300
            local0[15] = 200
            local0[17] = 300
            local0[30] = 0
            local0[31] = 100
        elseif 7 <= local5 then
            local0[1] = 0
            local0[3] = 0
            local0[4] = 0
            local0[6] = 100
            local0[8] = 200
            local0[9] = 150
            local0[10] = 0
            local0[11] = 100
            local0[12] = 250
            local0[15] = 200
            local0[17] = 300
            local0[30] = 0
            local0[31] = 100
        elseif 3 < local5 then
            local0[1] = 300
            local0[3] = 250
            local0[4] = 100
            local0[6] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 100
            local0[11] = 0
            local0[12] = 0
            local0[15] = 0
            local0[17] = 100
            local0[30] = 300
            local0[31] = 0
        else
            local0[1] = 400
            local0[3] = 200
            local0[4] = 100
            local0[6] = 0
            local0[8] = 0
            local0[9] = 0
            local0[10] = 100
            local0[11] = 0
            local0[12] = 0
            local0[15] = 0
            local0[17] = 0
            local0[30] = 250
            local0[31] = 0
        end
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        local0[22] = 1
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        local0[23] = 1
    end
    if SpaceCheck(arg1, arg2, 90, 5) == false and SpaceCheck(arg1, arg2, -90, 5) == false then
        local0[31] = 1
    end
    if SpaceCheck(arg1, arg2, -135, 3) == false and SpaceCheck(arg1, arg2, 135, 3) == false then
        local0[30] = 1
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        local0[25] = 1
    end
    if 0.8 < arg1:GetSpRate(TARGET_SELF) then
        local0[18] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 5, local0[1], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3020, 10, local0[3], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3021, 10, local0[3], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3022, 10, local0[3], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3023, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 4, local0[4], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 8, local0[4], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3007, 8, local0[4], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3003, 15, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3010, 15, local0[7], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3064, 15, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 10, local0[8], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3012, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3015, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3010, 15, local0[10], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3064, 15, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3020, 10, local0[11], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3021, 10, local0[11], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3022, 10, local0[11], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3023, 10, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3018, 10, local0[12], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3011, 10, local0[15], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3012, 10, local0[15], 1)
    local0[17] = SetCoolTime(arg1, arg2, 3033, 16, local0[17], 1)
    local0[18] = SetCoolTime(arg1, arg2, 3018, 25, local0[18], 1)
    local0[23] = SetCoolTime(arg1, arg2, 405002, 5, local0[23], 1)
    local0[23] = SetCoolTime(arg1, arg2, 405003, 5, local0[23], 1)
    local0[30] = SetCoolTime(arg1, arg2, 5202, 5, local0[30], 1)
    local0[30] = SetCoolTime(arg1, arg2, 5203, 5, local0[30], 1)
    local0[31] = SetCoolTime(arg1, arg2, 405012, 3, local0[31], 1)
    local0[31] = SetCoolTime(arg1, arg2, 405013, 3, local0[31], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, arg0["Act01"])
    local1[2] = REGIST_FUNC(arg1, arg2, arg0["Act02"])
    local1[3] = REGIST_FUNC(arg1, arg2, arg0["Act03"])
    local1[4] = REGIST_FUNC(arg1, arg2, arg0["Act04"])
    local1[5] = REGIST_FUNC(arg1, arg2, arg0["Act05"])
    local1[6] = REGIST_FUNC(arg1, arg2, arg0["Act06"])
    local1[7] = REGIST_FUNC(arg1, arg2, arg0["Act07"])
    local1[8] = REGIST_FUNC(arg1, arg2, arg0["Act08"])
    local1[9] = REGIST_FUNC(arg1, arg2, arg0["Act09"])
    local1[10] = REGIST_FUNC(arg1, arg2, arg0["Act10"])
    local1[11] = REGIST_FUNC(arg1, arg2, arg0["Act11"])
    local1[12] = REGIST_FUNC(arg1, arg2, arg0["Act12"])
    local1[13] = REGIST_FUNC(arg1, arg2, arg0["Act13"])
    local1[15] = REGIST_FUNC(arg1, arg2, arg0["Act15"])
    local1[16] = REGIST_FUNC(arg1, arg2, arg0["Act16"])
    local1[17] = REGIST_FUNC(arg1, arg2, arg0["Act17"])
    local1[18] = REGIST_FUNC(arg1, arg2, arg0["Act18"])
    local1[20] = REGIST_FUNC(arg1, arg2, arg0["Act20"])
    local1[21] = REGIST_FUNC(arg1, arg2, arg0["Act21"])
    local1[23] = REGIST_FUNC(arg1, arg2, arg0["Act23"])
    local1[24] = REGIST_FUNC(arg1, arg2, arg0["Act24"])
    local1[25] = REGIST_FUNC(arg1, arg2, arg0["Act25"])
    local1[26] = REGIST_FUNC(arg1, arg2, arg0["Act26"])
    local1[27] = REGIST_FUNC(arg1, arg2, arg0["Act27"])
    local1[28] = REGIST_FUNC(arg1, arg2, arg0["Act28"])
    local1[30] = REGIST_FUNC(arg1, arg2, arg0["Act30"])
    local1[31] = REGIST_FUNC(arg1, arg2, arg0["Act31"])
    local1[32] = REGIST_FUNC(arg1, arg2, arg0["Act32"])
    local1[34] = REGIST_FUNC(arg1, arg2, arg0["Act34"])
    local1[35] = REGIST_FUNC(arg1, arg2, arg0["Act35"])
    local1[36] = REGIST_FUNC(arg1, arg2, arg0["Act36"])
    local1[37] = REGIST_FUNC(arg1, arg2, arg0["Act37"])
    local1[38] = REGIST_FUNC(arg1, arg2, arg0["Act38"])
    local1[39] = REGIST_FUNC(arg1, arg2, arg0["Act39"])
    local1[40] = REGIST_FUNC(arg1, arg2, arg0["Act40"])
    local1[41] = REGIST_FUNC(arg1, arg2, arg0["Act41"])
    local1[42] = REGIST_FUNC(arg1, arg2, arg0["Act42"])
    local1[49] = REGIST_FUNC(arg1, arg2, arg0["Act49"])
    local1[50] = REGIST_FUNC(arg1, arg2, arg0["Act50"])
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, arg0["ActAfter_AdjustSpace"]), local2)
    return 
end

Goal.Act01 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1.5, 3)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local1:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    if local0 <= 30 then
        local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local1:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
        local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local1:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
        local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0)
        local1:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
    else
        local1 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local1:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
        if local0 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        else
            local1 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 9999, 0, 0)
            local1:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
        end
    end
    return 0
end

Goal.Act02 = function (arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 5.7 - arg0:GetMapHitRadius(TARGET_SELF), 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 100, 0, 1.5, 3)
    local local1 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local1:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act03 = function (arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local0, 0, 0)
    end
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 9999, local1, local0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act04 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.8 - arg0:GetMapHitRadius(TARGET_SELF), 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 100, 0, 0.5, 1.5)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 5, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act05 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1.5, 3)
    local local0 = 0
    local local1 = 0
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1, 0, 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, local0, local1, 0, 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act06 = function (arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, local0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 10 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1.5, 3)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, 999 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, local0, 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 6.2 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act07 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local local0 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local0 = 0
            else
                local0 = 1
            end
        else
            local0 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local0 = 1
    end
    local local1 = arg0:GetRandam_Float(2.5, 3.5)
    local local2 = arg0:GetRandam_Int(30, 45)
    local local3 = arg0:GetSpRate(TARGET_SELF)
    return 0
end

Goal.Act08 = function (arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 11 - arg0:GetMapHitRadius(TARGET_SELF), 11 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 1.5, 3)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    if arg0:GetRandam_Int(1, 100) <= 50 then
        local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local2:TimingSetNumber(5, arg0:GetNumber(5) + 12, AI_TIMING_SET__ACTIVATE)
        local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local2:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
        local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0)
        local2:TimingSetNumber(5, arg0:GetNumber(5) + 20, AI_TIMING_SET__ACTIVATE)
    else
        local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 9999, 0, 0)
        local2:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
    end
    return 0
end

Goal.Act09 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 9 - arg0:GetMapHitRadius(TARGET_SELF), 9 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 9 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 1.5, 3)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    if arg0:GetRandam_Int(1, 100) <= 100 then
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 3 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local0:TimingSetNumber(5, arg0:GetNumber(5) + 12, AI_TIMING_SET__ACTIVATE)
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3068, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local0:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0)
        local0:TimingSetNumber(5, arg0:GetNumber(5) + 20, AI_TIMING_SET__ACTIVATE)
    else
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 9999, 0, 0)
        local0:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
    end
    return 0
end

Goal.Act10 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1.5, 3)
    local local0 = 0
    local local1 = 0
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 11 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 9999, 0, 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act11 = function (arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetNumber(10)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    if arg0:GetRandam_Int(1, 100) <= 60 then
        local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 6.2 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local2:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    else
        local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 6.2 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local2:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    end
    return 0
end

Goal.Act12 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11 - arg0:GetMapHitRadius(TARGET_SELF), 11 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 1.5, 3)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act13 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5 - arg0:GetMapHitRadius(TARGET_SELF), 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 2, 100, 0, 1.5, 3)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act15 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 11 - arg0:GetMapHitRadius(TARGET_SELF), 11 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 11 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1.5, 3)
    local local0 = 0
    local local1 = 0
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1, 0, 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 5.7 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 12, AI_TIMING_SET__ACTIVATE)
    local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 9999, local0, local1)
    local2:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act16 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 3.3 - arg0:GetMapHitRadius(TARGET_SELF), 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 100, 0, 1.5, 3)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 7, AI_TIMING_SET__ACTIVATE)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3023, TARGET_ENE_0, 9999, 0)
    local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 4.8 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    if arg0:GetNumber(5) <= 30 - 10 then
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 4.2 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local0:TimingSetNumber(5, arg0:GetNumber(5) + 11, AI_TIMING_SET__ACTIVATE)
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 5.8 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local0:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
        local0:TimingSetNumber(5, arg0:GetNumber(5) + 21, AI_TIMING_SET__ACTIVATE)
    else
        local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 9999, 0, 0)
        local0:TimingSetNumber(5, arg0:GetNumber(5) + 25, AI_TIMING_SET__ACTIVATE)
    end
    return 0
end

Goal.Act17 = function (arg0, arg1, arg2)
    local local0 = 0
    local local1 = 1.5
    local local2 = 3
    local local3 = 0
    local local4 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 10 then
        Approach_Act_Flex(arg0, arg1, 3.5 - arg0:GetMapHitRadius(TARGET_SELF) - 0, 0, 0, 100, local0, local1, local2)
        local local5 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), local3, local4, 0, 0)
        local5:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        local5 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 9999, 0)
        local5:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    else
        Approach_Act_Flex(arg0, arg1, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 3, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 15 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 100, local0, local1, local2)
        local local5 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, local3, local4, 0, 0)
        local5:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        local5 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, local3, local4, 0, 0)
        local5:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        local5 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 9999, 0)
        local5:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    end
    return 0
end

Goal.Act18 = function (arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 5201, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), local0, local1, 0, 0)
    end
    local local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3045, TARGET_ENE_0, 9999, local0, local1)
    local2:TimingSetTimer(2, 25, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act20 = function (arg0, arg1, arg2)
    local local0 = 2.6
    local local1 = 9999
    local local2 = -1
    if arg0:GetDist(TARGET_ENE_0) <= 5 then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, 15 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
        local3:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    end
    if SpaceCheck(arg0, arg1, 180, 5) then
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3043, TARGET_ENE_0, 9999, 0)
        local3:TimingSetTimer(1, 30, AI_TIMING_SET__ACTIVATE)
    else
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3042, TARGET_ENE_0, 9999, 0)
        local3:TimingSetTimer(1, 30, AI_TIMING_SET__ACTIVATE)
    end
    local local3 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local local4 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local local5 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local local6 = 100
    local local7 = 0
    local local8 = 1.5
    local local9 = 3
    local local10 = 0
    local local11 = 0
    local local12 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local12:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act21 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45, -1, GOAL_RESULT_Success, true)
    return 0
end

Goal.Act23 = function (arg0, arg1, arg2)
    local local0 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local0 = 0
            else
                local0 = 1
            end
        else
            local0 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local0 = 1
    end
    local local1 = arg0:GetSpRate(TARGET_SELF)
    local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, local0, arg0:GetRandam_Int(30, 45), true, true, -1)
    local2:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act24 = function (arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Float(2.5, 3.5)
    if SpaceCheck(arg0, arg1, 180, 5) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        local0 = 2.5
    end
    local local1 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local1 = 0
            else
                local1 = 1
            end
        else
            local1 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local1 = 1
    end
    local local2 = arg0:GetSpRate(TARGET_SELF)
    local local3 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    local3:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act25 = function (arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, arg0:GetRandam_Float(1, 3), TARGET_ENE_0, true, -1)
    local0:SetTargetRange(0, -99, 10)
    return 0
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    return 0
end

Goal.Act27 = function (arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local local2 = local1 / math.tan(math.deg(30))
    local local3 = arg0:GetRandam_Int(0, 1)
    arg0:SetNumber(10, local3)
    if 3 <= local1 then
        if local2 + 1 <= local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, local2, TARGET_SELF, true, -1)
            end
        elseif local0 <= local2 - 1 then
            local local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, local2, TARGET_ENE_0, true, -1)
            local4:SetTargetRange(0, -99, 12)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        local local4 = arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
        local4:SetTargetRange(0, -99, 12)
    end
    local local4 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    local4 = local4:SetTargetRange(0, -99, 12)
    local4:TimingSetNumber(5, arg0:GetNumber(5) - 30, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act28 = function (arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Float(3, 3.5)
    local local2 = arg0:GetRandam_Int(30, 45)
    local local3 = -1
    local local4 = arg0:GetRandam_Int(0, 1)
    if local0 <= 5 then
        if SpaceCheck(arg0, arg1, 180, 1) == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, local3)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, local4, local2, true, true, local3)
        end
    elseif local0 <= 7 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local1, TARGET_ENE_0, local4, local2, true, true, local3)
    elseif local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    return 0
end

Goal.Act30 = function (arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = -1
    local local2 = 0
    if SpaceCheck(arg0, arg1, -135, 1) == true then
        if SpaceCheck(arg0, arg1, 135, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local2 = 0
            else
                local2 = 1
            end
        else
            local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local2 = 1
    end
    local local3 = 1.8
    local local4 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5202 + local2, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    return 0
end

Goal.Act31 = function (arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    if SpaceCheck(arg0, arg1, -90, 5) == true then
        if SpaceCheck(arg0, arg1, 90, 5) == true then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                local1 = 0
            else
                local1 = 1
            end
        else
            local1 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local1 = 1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1.8, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), false, true, -1)
    arg0:SetNumber(10, local1)
    return 0
end

Goal.Act32 = function (arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = arg0:GetNumber(10)
    if arg0:GetDist(TARGET_ENE_0) <= 10 then
        if local2 == 1 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 10 - arg0:GetMapHitRadius(TARGET_SELF), local1, local0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 6.5 - arg0:GetMapHitRadius(TARGET_SELF), local1, local0, 0, 0)
            local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 9999, local1, local0, 0, 0)
            local3:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, 9999, local1, local0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 9999, local1, local0, 0, 0)
            local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), local1, local0, 0, 0)
            local3:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
            local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 6.2 - arg0:GetMapHitRadius(TARGET_SELF), 0)
            local3:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
        end
    elseif local2 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, local1, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 9999, local1, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9 - arg0:GetMapHitRadius(TARGET_SELF), local1, local0, 0, 0)
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, local1, local0, 0, 0)
        local3:TimingSetNumber(5, arg0:GetNumber(5) + 9, AI_TIMING_SET__ACTIVATE)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, local1, local0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9999, local1, local0, 0, 0)
        local local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 10.7 - arg0:GetMapHitRadius(TARGET_SELF), local1, local0, 0, 0)
        local3:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
        local3 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 6.2 - arg0:GetMapHitRadius(TARGET_SELF), 0)
        local3:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    end
    return 0
end

Goal.Act34 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local local0 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local0 = 0
            else
                local0 = 1
            end
        else
            local0 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local0 = 1
    end
    local local1 = arg0:GetRandam_Int(30, 45)
    return 0
end

Goal.Act35 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    return 0
end

Goal.Act36 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(1, 0)
    return 0
end

Goal.Act37 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(1, 0)
    return 0
end

Goal.Act38 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3037, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(1, 0)
    return 0
end

Goal.Act39 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(1, 0)
    return 0
end

Goal.Act40 = function (arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
    Approach_Act_Flex(arg0, arg1, 4 - arg0:GetMapHitRadius(TARGET_SELF), 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0, 100, 0, 6, 10)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    return 0
end

Goal.Act41 = function (arg0, arg1, arg2)
    local local0 = 4.5
    if SpaceCheck(arg0, arg1, 180, 5) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        local0 = 3.5
    end
    local local1 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                local1 = 0
            else
                local1 = 1
            end
        else
            local1 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        local1 = 1
    end
    local local2 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local0, TARGET_ENE_0, local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    local2:TimingSetNumber(5, arg0:GetNumber(5) - 30, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act42 = function (arg0, arg1, arg2)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    local0:TimingSetTimer(1, 15, AI_TIMING_SET__ACTIVATE)
    return 0
end

Goal.Act49 = function (arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    if arg0:GetNumber(2) == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3035, TARGET_ENE_0, 9999, local1, local0, 0, 0)
        arg0:SetNumber(2, 1)
    elseif arg0:GetNumber(2) == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3036, TARGET_ENE_0, 9999, local1, local0, 0, 0)
        arg0:SetNumber(2, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3038, TARGET_ENE_0, 9999, local1, local0, 0, 0)
        arg0:SetNumber(2, 0)
    end
    return 0
end

Goal.Act50 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2.2, 2.2, 2.2, 100, 0, 1.5, 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3041, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    return 0
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetSpecialEffectActivateInterruptType(0)
    local local3 = arg1:HasSpecialEffectId(TARGET_SELF, 3506030)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    elseif arg1:IsInterupt(INTERUPT_ParryTiming) and local3 == false and arg0.Parry(arg1, arg2, 100, 0) then
        return true
    elseif arg1:IsInterupt(INTERUPT_ShootImpact) and local3 == false and arg0.ShootReaction(arg1, arg2) then
        return true
    elseif Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if local2 == 3506080 then
            arg1:Replanning()
            return true
        elseif local2 == 3506000 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
                arg2:ClearSubGoal()
                local local4 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3007, TARGET_ENE_0, 9999, 0, 0)
                local4:TimingSetNumber(5, arg1:GetNumber(5) + 25, AI_TIMING_SET__ACTIVATE)
            else
                arg2:ClearSubGoal()
                local local4 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3006, TARGET_ENE_0, 9999, 0, 0)
                local4:TimingSetNumber(5, arg1:GetNumber(5) + 25, AI_TIMING_SET__ACTIVATE)
            end
        elseif local2 == 3506004 then
            arg2:ClearSubGoal()
            local local4 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3034, TARGET_ENE_0, 9999, 0)
            local4:TimingSetNumber(5, arg1:GetNumber(5) + 25, AI_TIMING_SET__ACTIVATE)
        elseif local2 == 3506030 then
            arg1:Replanning()
            return true
        elseif local2 == 5030 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 280) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3028, TARGET_ENE_0, 9999, 0)
                return true
            elseif 5 <= local0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3029, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif local2 == 3506022 and arg1:GetNinsatsuNum() <= 1 then
            arg1:SetNumber(3, 1)
            return false
        end
    end
    if Interupt_Use_Item(arg1, 4, 20) and local3 == false then
        if local0 <= 5 then
            arg1:Replanning()
            return true
        elseif local0 <= 10.7 - arg1:GetMapHitRadius(TARGET_SELF) - 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 6.2 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
            return true
        else
            arg1:Replanning()
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) then
        if arg1:GetSpecialEffectInactivateInterruptType(0) == 110125 then
            arg1:Replanning()
            return true
        elseif arg1:GetSpecialEffectInactivateInterruptType(0) == 110010 then
            arg1:Replanning()
            return true
        else
            return false
        end
    elseif arg1:IsInterupt(INTERUPT_LoseSightTarget) and arg1:IsActiveGoal(GOAL_COMMON_SidewayMove) then
        if arg1:GetNumber(10) == 0 then
            arg2:ClearSubGoal()
            local local4 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, arg1:GetRandam_Int(30, 45), true, true, -1)
            local4:SetTargetRange(0, -99, 10)
            return true
        elseif arg1:GetNumber(10) == 1 then
            arg2:ClearSubGoal()
            local local4 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, arg1:GetRandam_Int(30, 45), true, true, -1)
            local4:SetTargetRange(0, -99, 10)
            return true
        else
            arg1:Replanning()
            return false
        end
    elseif arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        arg1:Replanning()
        return false
    else
        return false
    end
end

Goal.Parry = function (arg0, arg1, arg2, arg3)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = arg0:GetRandam_Int(1, 100)
    if arg0:IsFinishTimer(AI_TIMER_PARRY_INTERVAL) == false then
        return false
    elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 110450) then
        return false
    end
    arg0:SetTimer(AI_TIMER_PARRY_INTERVAL, 0.1)
    if arg2 == nil then
        arg2 = 50
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, GetDist_Parry(arg0)) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 3506080) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20006, TARGET_ENE_0, 9999, 0)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3103, TARGET_ENE_0, 9999, 0)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then
            if arg0:HasSpecialEffectId(TARGET_SELF, 3506070) then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3102, TARGET_ENE_0, 9999, 0)
                return true
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3041, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109980) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
            return true
        elseif arg0:GetRandam_Int(1, 100) <= Get_ConsecutiveGuardCount(arg0) * arg2 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3101, TARGET_ENE_0, 9999, 0)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 3506070) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3102, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    else
        return false
    end
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
    return true
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local local0 = ReturnKengekiSpecialEffect(arg1)
    if local0 == 0 then
        return false
    end
    local local1 = {}
    local local2 = {}
    local local3 = {}
    Common_Clear_Param(local1, local2, local3)
    local local4 = arg1:GetDist(TARGET_ENE_0)
    local local5 = arg1:GetSp(TARGET_SELF)
    if arg1:GetNinsatsuNum() > 1 or arg1:GetNumber(3) ~= 0 then
        if local0 == 200226 then
            local1[8] = 200
            local1[9] = 100
        elseif local0 == 200210 then
            if 3 <= local4 then
                local1[26] = 100
            else
                local1[1] = 100
                local1[5] = 100
                local1[11] = 100
                local1[12] = 300
            end
        elseif local0 == 200211 then
            if 3 <= local4 then
                local1[26] = 100
            else
                local1[2] = 100
                local1[4] = 100
                local1[12] = 200
            end
        elseif 30 - 3 <= arg1:GetNumber(5) then
            local1[24] = 100
            local1[12] = 150
        elseif local0 == 200200 then
            if 3 <= local4 then
                local1[26] = 100
            else
                local1[1] = 100
                local1[3] = 150
                local1[6] = 100
                local1[5] = 200
            end
        elseif local0 == 200201 then
            if 3 <= local4 then
                local1[26] = 100
            else
                local1[2] = 100
                local1[7] = 100
                local1[13] = 250
            end
        elseif local0 == 200215 then
            if 3 <= local4 then
                local1[26] = 100
            elseif 30 <= arg1:GetNumber(5) then
                local1[1] = 100
                local1[6] = 100
                local1[3] = 100
                local1[5] = 500
            else
                local1[1] = 200
                local1[3] = 100
            end
        elseif local0 == 200216 then
            if 3 <= local4 then
                local1[26] = 100
            else
                local1[2] = 200
                local1[7] = 100
            end
        end
    end
    local1[2] = SetCoolTime(arg1, arg2, 3066, 2, local1[2], 1)
    local1[3] = SetCoolTime(arg1, arg2, 3064, 5, local1[3], 1)
    local1[4] = SetCoolTime(arg1, arg2, 3068, 5, local1[4], 1)
    local1[6] = SetCoolTime(arg1, arg2, 3060, 2, local1[6], 1)
    local1[7] = SetCoolTime(arg1, arg2, 3065, 2, local1[7], 1)
    local1[12] = SetCoolTime(arg1, arg2, 3005, 4, local1[12], 1)
    local1[12] = SetCoolTime(arg1, arg2, 3006, 8, local1[12], 1)
    local1[12] = SetCoolTime(arg1, arg2, 3007, 8, local1[12], 1)
    local1[13] = SetCoolTime(arg1, arg2, 3024, 5, local1[13], 1)
    local2[1] = REGIST_FUNC(arg1, arg2, arg0["Kengeki01"])
    local2[2] = REGIST_FUNC(arg1, arg2, arg0["Kengeki02"])
    local2[3] = REGIST_FUNC(arg1, arg2, arg0["Kengeki03"])
    local2[4] = REGIST_FUNC(arg1, arg2, arg0["Kengeki04"])
    local2[5] = REGIST_FUNC(arg1, arg2, arg0["Kengeki05"])
    local2[6] = REGIST_FUNC(arg1, arg2, arg0["Kengeki06"])
    local2[7] = REGIST_FUNC(arg1, arg2, arg0["Kengeki07"])
    local2[8] = REGIST_FUNC(arg1, arg2, arg0["Kengeki08"])
    local2[9] = REGIST_FUNC(arg1, arg2, arg0["Kengeki09"])
    local2[11] = REGIST_FUNC(arg1, arg2, arg0["Kengeki11"])
    local2[12] = REGIST_FUNC(arg1, arg2, arg0["Kengeki12"])
    local2[13] = REGIST_FUNC(arg1, arg2, arg0["Kengeki13"])
    local2[15] = REGIST_FUNC(arg1, arg2, arg0["Act04"])
    local2[16] = REGIST_FUNC(arg1, arg2, arg0["Act07"])
    local2[21] = REGIST_FUNC(arg1, arg2, arg0["Act21"])
    local2[22] = REGIST_FUNC(arg1, arg2, arg0["Act22"])
    local2[23] = REGIST_FUNC(arg1, arg2, arg0["Act23"])
    local2[24] = REGIST_FUNC(arg1, arg2, arg0["Kengeki24"])
    local2[25] = REGIST_FUNC(arg1, arg2, arg0["Act25"])
    local2[26] = REGIST_FUNC(arg1, arg2, arg0["NoAction"])
    return Common_Kengeki_Activate(arg1, arg2, local1, local2, REGIST_FUNC(arg1, arg2, arg0["ActAfter_AdjustSpace"]), local3)
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3061, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3066, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3064, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3068, TARGET_ENE_0, 6 - arg0:GetMapHitRadius(TARGET_SELF), 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, 9999, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 15, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3063, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 8, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3060, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3065, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3090, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3091, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 6, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3026, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3005, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki13 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3024, TARGET_ENE_0, 9999, 0, 0)
    local0:TimingSetNumber(5, arg0:GetNumber(5) + 10, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.Kengeki24 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 5201, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    local0:TimingSetNumber(5, 0, AI_TIMING_SET__ACTIVATE)
    return 
end

Goal.NoAction = function (arg0, arg1, arg2)
    return -1
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

return 
