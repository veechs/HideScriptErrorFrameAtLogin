if (ScriptErrors:IsShown()) then
    local e = ScriptErrors_Message:GetText();
    DEFAULT_CHAT_FRAME:AddMessage("Script error at login: " .. e, 1, 0.578, 0);
    ScriptErrors:Hide();
end