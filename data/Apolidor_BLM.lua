include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0
    element_mode = 0
    dl_mode = 0
    dle_stance = 0

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {
        main="Marin Staff +1",
        sub="Clerisy Strap",
        ammo="Sapience Orb",
        head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},
        body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+3','"Mag.Atk.Bns."+11',}},
        hands="Repartie Gloves",
        legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
        neck="Stoicheion Medal",
        right_ear="Malignance Earring",
        left_ear="Loquac. Earring",
        left_ring="Kishar Ring",
        right_ring="Naji's Loop",
        }

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
    -- sets.midcast['Enfeebling Magic']  = {}
    -- sets.midcast['Enhancing Magic']  = {}
    sets.midcast['Elemental Magic']  = {  
        main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="Elan Strap +1",
        ammo="Floestone",
        head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},
        body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+3','"Mag.Atk.Bns."+11',}},
        hands="Jhakri Cuffs +2",
        legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+29','Magic Damage +10','INT+13',}},
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
        neck="Saevus Pendant +1",
        waist="Refoccilation stone",
        left_ear="Malignance earring",
        right_ear="Barkarole Earring",
        left_ring="Shiva Ring",
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+5',}},
        }
    -- sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --refresh
        main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
        sub="Elan Strap +1",
        ammo="Floestone",
        head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},
        body="Vrikodara jupon",
        hands="Jhakri Cuffs +2",
        legs={ name="Assid. Pants +1", augments={'Path: A',}},
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
        neck="Saevus Pendant +1",
        waist="Refoccilation stone",
        left_ear="Malignance earring",
        right_ear="Friomisi Earring",
        left_ring="Karieyh Ring",
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+5',}},
        }
    sets.aftercast.Idle[1]={}

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
    if spell.skill == 'Elemental Magic' then
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

    if command:lower() == 'switchelement' then 
        if dle_stance == 1 then
            dle_stance = 0 
            send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchdl" "" "None" "arrows/WheelNoneDL" ') 
        else           
            element_mode =(element_mode+1)%6 
        end
    end
    if command:lower() == 'switchdl' then 
        if dle_stance == 0 then
            dle_stance = 1
            send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "None" "arrows/WheelNone" ') 
        else
            dl_mode =(dl_mode+1)%2 
        end
    end
    -- if command:lower() == 'switchelementr' then element_mode =(element_mode+1)%6 end
    -- if command:lower() == 'switchelementl' then element_mode =(element_mode-1)%6 end

    if element_mode == 0 and dle_stance == 0 then   --Fire 
        send_command('input //xivcrossbar set job-default 2 5 ma "Firaja" t "Firaja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Fire V" t "Fire V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Fire IV" t "Fire IV"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Flare II" t "Flare II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Fire" "arrows/WheelFire" ') 
        --send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Ice" "arrows/IceL" ')
        --send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Water" "arrows/WaterR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Firestorm" me "Firestorm"')  
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8')  
    end

    if element_mode == 1 and dle_stance == 0 then   --Water
        send_command('input //xivcrossbar set job-default 2 5 ma "Waterja" t "Waterja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Water V" t "Water V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Water IV" t "Water IV"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Flood II" t "Flood II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Water" "arrows/WheelWater" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Fire" "arrows/FireL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Thunder" "arrows/ThunderR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Rainstorm" me "Rainstorm"')   
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8') 
    end

    if element_mode == 2 and dle_stance == 0 then   --Thunder
        send_command('input //xivcrossbar set job-default 2 5 ma "Thundaja" t "Thunderja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Thunder V" t "Thunder V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Thunder IV" t "Thunder IV"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Burst II" t "Burst II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Thunder" "arrows/WheelThunder" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Water" "arrows/WaterL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Earth" "arrows/EarthR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Thunderstorm" me "Thunderstorm"')  
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8')  
    end

    if element_mode == 3 and dle_stance == 0 then   --Earth
        send_command('input //xivcrossbar set job-default 2 5 ma "Stoneja" t "Stoneja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Stone V" t "Stone V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Stone IV" t "Stone IV"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Quake II" t "Quake II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Earth" "arrows/WheelEarth" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Thunder" "arrows/ThunderL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Wind" "arrows/WindR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Sandstorm" me "Sandstorm"')   
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8') 
    end

    if element_mode == 4 and dle_stance == 0 then   --Wind
        send_command('input //xivcrossbar set job-default 2 5 ma "Aeroja" t "Aeroja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Aero V" t "Aero V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Aero IV" t "Aero IV"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Tornado II" t "Tornado II"')   
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Wind" "arrows/WheelWind" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Earth" "arrows/EarthL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Ice" "arrows/IceR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Windstorm" me "Windstorm"')   
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8') 
    end

    if element_mode == 5 and dle_stance == 0 then   --Ice
        send_command('input //xivcrossbar set job-default 2 5 ma "Blizzaja" t "Blizzaja"')
        send_command('input //xivcrossbar set job-default 2 6 ma "Blizzard V" t "Blizzard V"')
        send_command('input //xivcrossbar set job-default 2 7 ma "Blizzard IV" t "Blizzard IV"')
        send_command('input //xivcrossbar set job-default 2 8 ma "Freeze II" t "Freeze II"')  
        send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelement" "" "Ice" "arrows/WheelIce" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "Wind" "arrows/WindL" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "Fire" "arrows/FireR" ')
        send_command('input //xivcrossbar set default 1 7 ma "Hailstorm" me "Hailstorm"')   
        send_command('input //xivcrossbar del default 2 5')
        send_command('input //xivcrossbar del default 2 6')
        send_command('input //xivcrossbar del default 2 7')
        send_command('input //xivcrossbar del default 2 8') 
    end

    if dl_mode == 0 and dle_stance == 1 then   --Dark
        -- send_command('input //xivcrossbar set job-default 2 5 ma "ja" t "ja"')
        -- send_command('input //xivcrossbar set job-default 2 6 ma " V" t " V"')
        -- send_command('input //xivcrossbar set job-default 2 7 ma " IV" t " IV"')
        -- send_command('input //xivcrossbar set job-default 2 8 ma " II" t " II"')   
        send_command('input //xivcrossbar set default 1 5 ja "Dark Arts" me "Dark Arts"')  
        send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchdl" "" "Dark" "arrows/WheelDark" ')  
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "" "arrows/L" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "" "arrows/R" ')
        send_command('input //xivcrossbar set default 1 7 ma "Voidstorm" me "Voidstorm"') 
        send_command('input //xivcrossbar set default 2 5 ja "Manifestation" me "Manifestation"')
        send_command('input //xivcrossbar set default 2 6 ma "Drain" t "Drain"')
        send_command('input //xivcrossbar set default 2 7 ma "Aspir II" t "Aspir II"')
        send_command('input //xivcrossbar set default 2 8 ja "Addendum: Black" me "Addendum: Black"')   
    end

    if dl_mode == 1 and dle_stance == 1 then   --Light
        -- send_command('input //xivcrossbar set job-default 2 5 ma "ja" t "ja"')
        -- send_command('input //xivcrossbar set job-default 2 6 ma " V" t " V"')
        -- send_command('input //xivcrossbar set job-default 2 7 ma " IV" t " IV"')
        -- send_command('input //xivcrossbar set job-default 2 8 ma " II" t " II"')   
        send_command('input //xivcrossbar set default 1 5 ja "Light Arts" me "Light Arts"')
        send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchdl" "" "Light" "arrows/WheelLight" ')
        -- send_command('input //xivcrossbar set job-default 2 1 ex "gs c switchelementl" "" "" "arrows/L" ')
        -- send_command('input //xivcrossbar set job-default 2 3 ex "gs c switchelementr" "" "" "arrows/R" ')
        send_command('input //xivcrossbar set default 1 7 ma "Aurorastorm" me "Aurorastorm"') 
        send_command('input //xivcrossbar set default 2 5 ja "Accession" me "Accession"')
        send_command('input //xivcrossbar set default 2 6 ma "Cure III" stpc "Cure III"')
        send_command('input //xivcrossbar set default 2 7 ma "Erase" stpc "Erase"')
        send_command('input //xivcrossbar set default 2 8 ja "Addendum: White" me "Addendum: White"')     
    end
end