E2Lib.RegisterExtension( "simple_prop_damage", true )

e2function void entity:spdAdminDisable()
    if not isValid( this ) then return end
    
    if GetConVar( "spd_tool_toggle_adminonly" ):GetBool() then
        if not self.player:IsAdmin() then return end
    end
    
    this.spdDisabled = 1
end

e2function void entity:spdAdminEnable()
    if not isValid( this ) then return end
    
    if GetConVar( "spd_tool_toggle_adminonly" ):GetBool() then
        if not self.player:IsAdmin() then return end
    end
    
    this.spdDisabled = 0
end
