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
    sets.precast = {  
        main="Solstice",
        range="Dunna",
        -- head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}}, 800 DP
        -- body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+3','"Mag.Atk.Bns."+11',}}, 800 DP
        -- hands="Amalric Gages +1", 7M
        legs="Geomancy Pants",
        feet="Azimuth Gaiters",
        -- neck="Incanter's Torque",
        -- waist="Embla Sash", 1000 DP
        -- left_ear="Malignance earring",
        -- right_ear="Etiolation Earring",
        -- left_ring="Defending Ring",
        -- right_ring="Kishar Ring", -- Glassy Gorger Omen
        -- back="Lifestream Cape", JSE
        }
    sets.precast.JA = {}
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {}        
    --sets.precast.WS['ws'] = set_combine(sets.precast.WS, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast['Elemental Magic']  = {  
        -- main="Daybreak",
        -- ammo="Floestone",
        -- head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},
        -- body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+3','"Mag.Atk.Bns."+11',}},
        hands="Jhakri Cuffs +1",
        -- legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+29','Magic Damage +10','INT+13',}},
        -- feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
        -- neck="Saevus Pendant +1",
        -- waist="Refoccilation stone",
        -- left_ear="Malignance earring",
        -- right_ear="Barkarole Earring",
        -- left_ring="Shiva Ring",
        -- right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        -- back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+5',}},
        }
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    -- sets.midcast['Elemental Magic']  = {}
    sets.midcast.geoskill = {
        main="Solstice",
        range="Dunna",
        head="Azimuth Hood",
        body="Bagua Tunic",
        hands="Geo. Mitaines",
        neck="Incanter's Torque",
        left_ear="Gna Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        --back={ name="Lifestream Cape", augments={'Geomancy Skill +8','Indi. eff. dur. +15','Pet: Damage taken -3%',}},
        }
    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={ --refresh
        main="Solstice",
        range="Dunna",
        head="Azimuth Hood",
        -- head="Telchine Cap"
        body="Geomancy Tunic",
        hands="Geo. Mitaines",
        -- legs="Telchine Braconi",
        feet="Bagua Sandals",
        -- feet="Telchine Pigaches"
        neck="Bagua Charm +1",
        -- waist="Isa Belt" -- Delve
        left_ear="Gna Earring",
        -- right_ear="Ethereal Earring"
        left_ring="Defending Ring"
        right_ring="Stikini Ring +1"
        back="Nantosuelta's Cape",
        }
    sets.aftercast.Idle[1]={ --Pet DT

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
    if string.find(spell.english,'Geo-') or string.find(spell.english,'Indi-') then 
         equip(sets.midcast.geoskill)
    -- elseif spell.english == 'exact name' then
    --     equip(sets.midcast.magic)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    elseif spell.skill == 'Elemental Magic' then
         equip(sets.midcast['Elemental Magic'])
    -- elseif spell.skill then
    --     equip(sets.aftercast.Idle)
     end
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


Violet