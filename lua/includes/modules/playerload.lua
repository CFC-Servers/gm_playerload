hook.Add( "PlayerInitialSpawn","FullLoadSetup", function( spawnedPly )
    hook.Add( "SetupMove", spawnedPly, function( self, ply, _, cmd )
        if self ~= ply then return end
        if cmd:IsForced() then return end

        hook.Run( "PlayerFullLoad", self )
        hook.Remove( "SetupMove", self )
    end )
end)
