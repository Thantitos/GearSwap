include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0
    durationspells = Set { "Haste II","Phalanx" }

    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {
        ammo="Sapience Orb",            --2%
        head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},  --8%
        body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+3','"Mag.Atk.Bns."+11',}},           --6%
        hands="Repartie Gloves",        --2%
        legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},                                         --7%
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},        --5%
        neck="Stoicheion Medal",        --3% elem.
        right_ear="Malignance Earring", --4%
        left_ear="Loquac. Earring",     --2%
        left_ring="Kishar Ring",        --4%
        right_ring="Naji's Loop",       --1%
    }

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {}        
    sets.precast['Savage Blade'] = set_combine(sets.precast.WS, {
        ammo="Oshasha's Treatise",
        head={ name="Nyame Helm", augments={'Path: B',}},
        body="Nyame Mail",
        hands="Jhakri Cuffs +2",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Fotia Gorget",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Rufescent Ring",
        -- left_ring="Epaminondas Ring",
        right_ring="Karieyh Ring",
        back="Letalis Mantle",
        -- back="Succelo's Cape",
        })
    sets.precast['Sanguine Blade'] = set_combine(sets.precast.WS, {})
    sets.precast['Requiescat'] = set_combine(sets.precast.WS, {})
    sets.precast['Chant du Cygne'] = set_combine(sets.precast.WS, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast.enhancingskill  = {
        main="Pukulatmuj +1",
        sub="Secespita",
        ammo="Staunch Tathlum",
        --ammo="Staunch Tathlum +1",
        head="Umuthi Hat",
        --head="Befouled Crown"
        body="Hyksos Robe",
        --body="Viti. Tabard +3"
        hands="Duelist's Gloves",
        --hands="Viti. Gloves +3"
        legs="Bunzi's Pants",
        --legs="Atrophy Tights +3",
        --feet="Leth. Houseaux +2",
        waist="Olympus Sash",
        --waist="Embla Sash"
        neck="Incanter's Torque",
        left_ear="Andoaa Earring",
        --right_ear="Mimir Earring",
        --right_ear="Leth. Earring +2",
        left_ring="Stikini Ring",
        --left_ring="Stikini Ring +1",
        right_ring="Stikini Ring",
        --right_ring="Stikini Ring +1",
        back="Succelo's Cape",
        }

    sets.midcast.enhancingduration  = set_combine(sets.precast.WS, {
        --main="Colada",
        --sub="Ammurapi shield",
        ammo="Staunch Tathlum",
        --ammo="Staunch Tathlum +1",
        --head="Leth. Chappel +1"
        --body="Viti. Tabard +3"
        --hands="Atrophy Gloves +3"
        legs="Telchine Braconi",   --augment!!!!
        --feet="Leth. Houseaux +2",
        --waist="Embla Sash"
        --neck="Duelist's torque +2",
        --right_ear="Leth. Earring +2",
        })

    sets.midcast['Elemental Magic']  = {
        ammo="Hydrocera",
        head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},
        body="Count's Garb",
        hands="Jhakri Cuffs +2",
        legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+29','Magic Damage +10','INT+13',}},
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
        neck="Stoicheion Medal",
        waist="Yamabuki-no-Obi",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Icesoul Ring",
        right_ring="Locus Ring",
        back="Merciful Cape",
        }

    sets.midcast['Enfeebling Magic']  = {
        main="Fettering blade",
        sub="Crepuscular knife",
		range="Kaja Bow",
        head="Carmine Mask",  
        --head="Viti. Chapeu +3"  
        body="Bunzi's Robe",
        --body="Atrophy Tabard +3"
        hands="Jhakri cuffs +2",
        --hands="Regal Cuffs"
        legs="Psycloth lappas",
        --legs="Chironic hose",
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
        --feet="Vitiation Boots +3",
        waist="Casso Sash",
        --waist="Obstinate sash"
        --neck="Duelist's torque +2",
        neck="Incanter's torque",
        right_ear="Malignance Earring",
        --right_ear="Regal Earring",
        --left_ear="Snotra Earring",
        left_ring="Stikini Ring",
        --left_ring="Stikini Ring +1",
        left_ring="Kishar Ring",
        back="Succelo's Cape",  --augment
        }

    sets.midcast.Cure = {}
    sets.midcast.refresh = {
        -- head="Amalric coif +1",
        -- body="Atrophy tabard +3",
        -- legs="Lethargy fuseau +1",
        -- feet="Inspirited boots",
        waist="Gishdubar sash",
        back="Grapevine cape"

    }

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --melee
        ammo="Aurgelmir Orb",
        head="Malignance Chapeau",
        body="Nyame Mail",
        -- body="Malignance Tabard",
        hands="Malignance Gloves",
        legs="Bunzi's Pants",
        -- legs="Malignance Tights",
        feet="Nyame Sollerets",
        -- feet="Malignance Boots",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Sherida Earring",
        left_ring="Chirich Ring +1",
        -- right_ring="Chirich Ring +1",
        right_ring="Petrov Ring",
        back="Letalis Mantle",
        -- back="Succelo's Cape",
        }

    sets.aftercast.Idle[1]={    --Endamage
        ammo="Aurgelmir Orb",
        head="Aya. Zucchetto +2",
        body="Ayanmo Corazza +2",
        hands="Aya. Manopolas +2",
        legs="Aya. Cosciales +2",
        feet="Aya. Gambieras +2",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Mache Earring",
        left_ring="Varar Ring +1",
        right_ring="Varar Ring +1",
        back="Estoqueur's Cape",
        }

    sets.aftercast.Idle[2]={    --DT
        ammo="Aurgelmir Orb",
        head="Malignance Chapeau",
        body="Nyame Mail",
        -- body="Malignance Tabard",
        hands="Malignance Gloves",
        legs="Bunzi's Pants",
        -- legs="Malignance Tights",
        feet="Nyame Sollerets",
        -- feet="Malignance Boots",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Sherida Earring",
        left_ring="Chirich Ring +1",
        -- right_ring="Chirich Ring +1",
        right_ring="Defending Ring",
        back="Letalis Mantle",
        -- back="Succelo's Cape",
        }   

    -- weapon_mode        
    sets.aftercast.Weapon[0]={  --savage  
        main="Naegling",
        sub="Emissary",
    }       
    sets.aftercast.Weapon[1]={  --endamage 0phys
        main="Ceremonial Dagger",
        sub="Ceremonial Dagger",
    }           
    sets.aftercast.Weapon[2]={  --endamage
        main={ name="Egeking", augments={'Accuracy+50','Mag. Acc.+30','"Fast Cast"+8',}},
        sub="Pukulatmuj +1",
    }   

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
    if string.find(spell.english,'Gain-') then 
        equip(set_combine(sets.midcast.enhancingskill, {
            --hands="Vitiation Gloves +3"
        }))
    elseif string.find(spell.english,'Refresh') then
        equip(sets.midcast.refresh)    
    elseif durationspells[spell.english] then
        equip(sets.midcast.enhancingduration)
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets.midcast['Enfeebling Magic'])
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.midcast.enhancingskill)
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
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%3 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    if command:lower() == 'gear3' then gear_mode = 2 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%3 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    equip(sets.aftercast.Weapon[weapon_mode])
	switch_crossbar(weapon_mode)	    
end

function switch_crossbar(mode)
	if mode == 1 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Spirits Within" t "Spirits Within"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end


end

function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
  end