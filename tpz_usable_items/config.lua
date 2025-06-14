Config = {} 

Config.Debug = true

---------------------------------------------------------------
--[[ General Settings ]]--
---------------------------------------------------------------

Config.UsableItems = {

    ['pipepeace'] = {

        Type   = 'PIPE',
        Object = 'p_pipe01x',

        RemoveItemOnUse = false,
        RemoveDurabilityOnUse = { Enabled = true, RemoveValue = { min = 15, max = 20 } }, -- (!) THE ITEM MUST BE A NON-STACKABLE ON ITEMS DATABASE OR ITEMS REGISTRATIONS FILE (DEPENDS WHICH ONE YOU USE).

        RequiredItemUse = { Enabled = true, Item = 'matches', Warning = '~e~X1 Match Stick is required to smoke.', Quantity = 1, Remove = true },

        PutAwayPromptAction = { Enabled = true,  Label = 'Put Away' },
        UsePromptAction     = { Enabled = true,  Label = 'Smoke' }, 
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR PIPE.
    },

    ['pipepeace'] = {

        Type   = 'PIPE_OF_PEACE',
        Object = 'p_peacepipe01x',

        RemoveItemOnUse = false,
        RemoveDurabilityOnUse = { Enabled = true, RemoveValue = { min = 15, max = 20 } }, -- (!) THE ITEM MUST BE A NON-STACKABLE ON ITEMS DATABASE OR ITEMS REGISTRATIONS FILE (DEPENDS WHICH ONE YOU USE).

        RequiredItemUse = { Enabled = true, Item = 'matches', Warning = '~e~X1 Match Stick is required to smoke.', Quantity = 1, Remove = true },

        PutAwayPromptAction = { Enabled = true,  Label = 'Put Away' },
        UsePromptAction     = { Enabled = true,  Label = 'Smoke' }, 
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR PIPE OF PEACE.
    },

    ['cigar'] = {

        Type   = 'CIGAR',
        Object = 'p_cigar01x',

        RemoveItemOnUse = false, -- CIGAR NOT REMOVED, WE USE DURABILITY INSTEAD.
        RemoveDurabilityOnUse = { Enabled = true, RemoveValue = { min = 15, max = 20 } }, -- (!) THE ITEM MUST BE A NON-STACKABLE ON ITEMS DATABASE OR ITEMS REGISTRATIONS FILE (DEPENDS WHICH ONE YOU USE).

        RequiredItemUse = { Enabled = true, Item = 'matches', Warning = '~e~X1 Match Stick is required to smoke.', Quantity = 1, Remove = true },

        PutAwayPromptAction = { Enabled = true,  Label = 'Stop Smoking' },
        UsePromptAction     = { Enabled = false, Label = '' },  -- DISABLED FOR CIGAR.
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR CIGAR.
    },

    ['cigarette'] = {

        Type   = 'CIGARETTE',
        Object = 'p_cigarette01x',

        RemoveItemOnUse = true, -- CIGARETTE IS REMOVED ON ITS USE BY DEFAULT
        RemoveDurabilityOnUse = { Enabled = false, RemoveValue = { min = 0, max = 0 } },

        RequiredItemUse = { Enabled = true, Item = 'matches', Warning = '~e~X1 Match Stick is required to smoke.', Quantity = 1, Remove = true },

        PutAwayPromptAction = { Enabled = true, Label = 'Finish Smoking' }, 
        UsePromptAction     = { Enabled = true, Label = 'Inhale' },
        ChangePromptAction  = { Enabled = false, Label = 'Change Stance' },
    },


    ['hairpomade'] = {

        Type   = 'HAIR_POMADE',
        Object = '', -- HAIR_POMADE DOES NOT REQUIRES OBJECT NAME

        RemoveItemOnUse = true, -- HAIR POMADE IS REMOVED ON ITS USE BY DEFAULT
        RemoveDurabilityOnUse = { Enabled = false, RemoveValue = { min = 0, max = 0 } },
        RequiredItemUse = { Enabled = false, Item = '', Quantity = 0, Warning = '', Remove = false },

        PutAwayPromptAction = { Enabled = false, Label = '' },  -- DISABLED FOR HAIR POMADE.
        UsePromptAction     = { Enabled = false, Label = '' },  -- DISABLED FOR HAIR POMADE.
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR HAIR POMADE.
    },

    -- [ POCKET WATCHES ] --
    ['pocket_watch'] = {

        Type   = 'POCKET_WATCH',
        Object = 's_inv_pocketwatch06x', -- POCKETS REQUIRES OBJECT NAME

        RemoveItemOnUse = false, -- POCKED WATCH SHOULD NOT BE REMOVED
        RemoveDurabilityOnUse = { Enabled = false, RemoveValue = { min = 0, max = 0 } },
        RequiredItemUse = { Enabled = false, Item = '', Quantity = 0, Warning = '', Remove = false },

        PutAwayPromptAction = { Enabled = true,  Label = 'Put Away' },
        UsePromptAction     = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
    },

    ['pocket_watch_silver'] = {

        Type   = 'POCKET_WATCH',
        Object = 's_inv_pocketwatch02x', -- POCKETS REQUIRES OBJECT NAME

        RemoveItemOnUse = false, -- POCKED WATCH SHOULD NOT BE REMOVED
        RemoveDurabilityOnUse = { Enabled = false, RemoveValue = { min = 0, max = 0 } },
        RequiredItemUse = { Enabled = false, Item = '', Quantity = 0, Warning = '', Remove = false },

        PutAwayPromptAction = { Enabled = true,  Label = 'Put Away' },
        UsePromptAction     = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
    },

    ['pocket_watch_gold'] = {

        Type   = 'POCKET_WATCH',
        Object = 's_inv_pocketwatch03x', -- POCKETS REQUIRES OBJECT NAME

        RemoveItemOnUse = false, -- POCKED WATCH SHOULD NOT BE REMOVED
        RemoveDurabilityOnUse = { Enabled = false, RemoveValue = { min = 0, max = 0 } },
        RequiredItemUse = { Enabled = false, Item = '', Quantity = 0, Warning = '', Remove = false },

        PutAwayPromptAction = { Enabled = true,  Label = 'Put Away' },
        UsePromptAction     = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
    },

    ['pocket_watch_platinum'] = {

        Type   = 'POCKET_WATCH',
        Object = 's_inv_pocketwatch01x', -- POCKETS REQUIRES OBJECT NAME

        RemoveItemOnUse = false, -- POCKED WATCH SHOULD NOT BE REMOVED
        RemoveDurabilityOnUse = { Enabled = false, RemoveValue = { min = 0, max = 0 } },
        RequiredItemUse = { Enabled = false, Item = '', Quantity = 0, Warning = '', Remove = false },

        PutAwayPromptAction = { Enabled = true,  Label = 'Put Away' },
        UsePromptAction     = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
    },

    ['pocket_watch_antique'] = {

        Type   = 'POCKET_WATCH',
        Object = 's_oldpocketwatch01x', -- POCKETS REQUIRES OBJECT NAME

        RemoveItemOnUse = false, -- POCKED WATCH SHOULD NOT BE REMOVED
        RemoveDurabilityOnUse = { Enabled = false, RemoveValue = { min = 0, max = 0 } },
        RequiredItemUse = { Enabled = false, Item = '', Quantity = 0, Warning = '', Remove = false },

        PutAwayPromptAction = { Enabled = true,  Label = 'Put Away' },
        UsePromptAction     = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
    },

    ['pocket_watch_reutlinger'] = {

        Type   = 'POCKET_WATCH',
        Object = 's_pocketwatch_reutlinge', -- POCKETS REQUIRES OBJECT NAME

        RemoveItemOnUse = false, -- POCKED WATCH SHOULD NOT BE REMOVED
        RemoveDurabilityOnUse = { Enabled = false, RemoveValue = { min = 0, max = 0 } },
        RequiredItemUse = { Enabled = false, Item = '', Quantity = 0, Warning = '', Remove = false },

        PutAwayPromptAction = { Enabled = true,  Label = 'Put Away' },
        UsePromptAction     = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
        ChangePromptAction  = { Enabled = false, Label = '' },  -- DISABLED FOR POCKET WATCHES.
    },
}

-----------------------------------------------------------
--[[ Notification Functions  ]]--
-----------------------------------------------------------

-- @param source : The source always null when called from client.
-- @param type   : returns "error", "success", "info"
-- @param duration : the notification duration in milliseconds
function SendNotification(source, message, type, duration)

	if not duration then
		duration = 3000
	end

    if not source then
        TriggerEvent('tpz_core:sendBottomTipNotification', message, duration)
    else
        TriggerClientEvent('tpz_core:sendBottomTipNotification', source, message, duration)
    end
  
end
