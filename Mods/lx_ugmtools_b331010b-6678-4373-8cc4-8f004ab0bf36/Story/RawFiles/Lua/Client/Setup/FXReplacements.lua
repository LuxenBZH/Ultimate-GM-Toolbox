local function ReplaceAllFX(...)
    Ext.GetStat("GM_SELECTED").StatusEffect = "RS3_FX_UI_Icon_TriangleDown_01_Blue:Dummy_OverheadFX"
    Ext.GetStat("GM_SELECTED_DISCREET").StatusEffect = "RS3_FX_UI_Icon_TriangleDown_01_Blue:Dummy_OverheadFX"
    Ext.GetStat("GM_TARGETED").StatusEffect = "RS3_FX_UI_Icon_TriangleDown_01_Yellow:Dummy_OverheadFX"
    Ext.GetStat("GM_TARGETED_DISCREET").StatusEffect = "RS3_FX_UI_Icon_TriangleDown_01_Yellow:Dummy_OverheadFX"
    Ext.GetStat("GM_BLUEARROW").StatusEffect = "RS3_FX_UI_Icon_TriangleDown_01_Blue"
    Ext.GetStat("GM_GREENARROW").StatusEffect = "RS3_FX_UI_Icon_TriangleDown_01_Green"
    Ext.GetStat("GM_REDARROW").StatusEffect = "RS3_FX_UI_Icon_TriangleDown_01_Red"
    Ext.GetStat("GM_YELLOWARROW").StatusEffect = "RS3_FX_UI_Icon_TriangleDown_01_Yellow"
    Ext.GetStat("GM_CIRCLE2M").StatusEffect = "RS3_FX_UI_Circle_Select_2m"
    Ext.GetStat("GM_CIRCLE5M").StatusEffect = "RS3_FX_UI_Circle_Select_5m"
    Ext.GetStat("GM_CIRCLE10M").StatusEffect = "RS3_FX_UI_Circle_Select_10m"
end

Ext.RegisterNetListener("UGM_ReplaceFX", ReplaceAllFX)
-- Ext.Events.SessionLoaded:Subscribe(function(e)
--     if Ext.ClientUI.GetByType(119):GetRoot().isGameMasterChar then
--         ReplaceAllFX()
--     end
-- end)