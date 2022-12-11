include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    sets.precast.JA['Sneak Attack'] = {
        hands="Raid. Armlets +2",
        }
    sets.precast.FC = {}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {
        ammo="Aurgelmir Orb",
        head="Meghanada Visor +1",
        body="Meghanada Cuirie",
        hands="Meg. Gloves +1",
        legs={ name="Herculean Trousers", augments={'Accuracy+30','Weapon skill damage +2%','DEX+13',}},
        feet="Meg. Jam. +1",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back={ name="Canny Cape", augments={'DEX+3','AGI+1','"Dual Wield"+3','Crit. hit damage +1%',}},     
        }        
    sets.precast['Evisceration'] = set_combine(sets.precast.WS, {})
    sets.precast['Exenterator'] = set_combine(sets.precast.WS, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    --sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --normal
        main={ name="Shijo", augments={'DMG:+15','Accuracy+15','Attack+15',}},
        sub={ name="Taming Sari", augments={'STR+7','DEX+8','DMG:+6',}},
        ammo="Aurgelmir Orb",
        head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
        body={ name="Herculean Vest", augments={'Accuracy+14','"Triple Atk."+4','Attack+15',}},
        hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
        legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
        feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
        neck="Asperity Necklace",
        waist="Twilight Belt",
        left_ear="Sherida Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back={ name="Canny Cape", augments={'DEX+3','AGI+1','"Dual Wield"+3','Crit. hit damage +1%',}},
        }
    sets.aftercast.Idle[1]={    --Treasure Hunter
        main={ name="Shijo", augments={'DMG:+15','Accuracy+15','Attack+15',}},
        sub="Sandung",
        ammo="Perfect lucky egg",
        head="Wh. Rarab Cap +1",
        body="Meghanada Cuirie",
        hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
        legs="Meg. Chausses",
        feet="Skulk. Poulaines +1",
        neck="Torero Torque",
        waist="Twilight Belt",
        left_ear="Brutal Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Apate Ring",
        back={ name="Canny Cape", augments={'DEX+3','AGI+1','"Dual Wield"+3','Crit. hit damage +1%',}},
        }

    -- weapon_mode        
    sets.aftercast.Weapon[0]={}       
    sets.aftercast.Weapon[1]={}    

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function precast(spell)
    -- Job Ability-Boost
    if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    -- Fast Cast for Magic    
    elseif spell.action_type == 'Magic' then
            equip(sets.precast.FC)
    end
end

function midcast(spell) 
    -- Magic-Boost   
    -- if string.find(spell.english,'part of the name') then 
    --     equip(sets.midcast.magic)
    -- elseif spell.english == 'exact name' then
    --     equip(sets.midcast.magic)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    -- elseif spell.skill == 'Elemental Magic' then
    --     equip(sets.midcast['Elemental Magic'])
    -- elseif spell.skill then
    --     equip(sets.aftercast.Idle)
    -- end
end

function aftercast(spell)
        equip(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode])
end

-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%2 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%2 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    equip(sets.aftercast.Weapon[weapon_mode])
end