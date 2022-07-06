hook.Add( "PlayerInitialSpawn","GM_FullLoadSetup", function( spawnedPly )
    hook.Add( "SetupMove", spawnedPly, function( self, ply, _, cmd )
        if self ~= ply then return end
        if cmd:IsForced() then return end

        hook.Remove( "SetupMove", self )
        hook.Run( "PlayerFullLoad", self )
    end )
end )
