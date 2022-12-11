include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0
    durationspells = Set { "Haste II","Phalanx II","Refresh II"}
    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {                 --55%   75%
    -- sub="Sakpata's Sword"           --10%
    ammo="Sapience Orb",            --2%
    head="Atrophy Chapeau +1",      --12%
    -- head="Atrophy Chapeau +3",      --16%
    body="Viti. Tabard +1",         --13%         
    --body="Viti. Tabard +3"           --16%
    hands="Repartie Gloves",        --2%
    -- hands="Leyline Gloves"          --5%
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},                                         --7%
    feet="Carmine greaves +1",       --8%
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
        head="Nyame Helm",
        body="Nyame Mail",
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Fotia Gorget",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Brutal Earring",     --Ishvara Earring
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
        body="Viti. Tabard +1",
        --body="Viti. Tabard +3"
        hands="Viti. Gloves +1",
        --hands="Viti. Gloves +3"
        legs="Atrophy Tights +1",
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
        --back="Ghostfyre Cape",   --Enhancing magic skill +10/Enhancing magic duration +20
        }

        sets.midcast.enhancingduration  = set_combine(sets.midcast.enhancingskill, {
            --main="Colada",  --+4 Enhancing Magic duration
            --sub="Ammurapi shield",
            ammo="Staunch Tathlum",
            --ammo="Staunch Tathlum +1",
            head="Leth. Chappel",
            --head="Telchine cap"  --+10% Enhancing magic duration  dusk
            body="Viti. Tabard +1",
            --body="Viti. Tabard +3"
            hands="Atrophy Gloves +2",
            --hands="Atrophy Gloves +3"
            legs="Telchine Braconi",   --+10% Enhancing magic duration  dusk
            --feet="Leth. Houseaux +2",
            --waist="Embla Sash"
            --neck="Duelist's torque +2",
            --right_ear="Leth. Earring +2",
            })
    
            sets.midcast.enhancingdurationother  = set_combine(sets.midcast.enhancingduration, {
                head="Lethargy Chappel",
                -- head="Lethargy Chappel +2",
                body="Lethargy Sayon",
                -- body="Lethargy Sayon +2",
                hands="Atrophy Gloves +2",
                --hands="Atrophy Gloves +3"
                legs="Leth. Fuseau",
                -- legs="Leth. Fuseau +2",
                feet="Atrophy Tights +1",
                --feet="Leth. Houseaux +2",
                })
                sets.midcast['Elemental Magic']  = {
                    main="Bunzi's Rod",
                    sub="Daybreak",
                    ammo="Floestone",
                    head="Bunzi's Hat",
                    body="Bunzi's Robe",
                    hands="Bunzi's Gloves",
                    legs="Bunzi's Pants",
                    feet="Bunzi's Sabots",
                    neck="Sibyl Scarf",
                    waist="Refoccilation Stone",
                    left_ear="Malignance Earring",
                    right_ear="Friomisi Earring",
                    left_ring="Locus Ring",
                    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
                    back="Grapevine Cape",
                    }
                    sets.midcast['Enfeebling Magic']  = {
                        main="Fettering blade",
                        sub="Crepuscular knife",
                        range="Kaja Bow",
                        head="Viti. Chapeu +1",  
                        --head="Viti. Chapeu +3"  
                        body="Atrophy Tabard +2",
                        --body="Atrophy Tabard +3"
                        hands="Jhakri cuffs +2",
                        --hands="Regal Cuffs"
                        legs="Psycloth lappas",
                        --legs="Chironic hose",
                        feet="Vitiation Boots +1",
                        --feet="Vitiation Boots +3",
                        waist="Obstinate sash", --augment
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
    sets.midcast.refresh = set_combine(sets.midcast.enhancingduration, {
        -- head="Amalric coif +1",
        body="Atrophy Tabard +2",
        -- body="Atrophy tabard +3",
        legs="Lethargy fuseau",
        -- legs="Lethargy fuseau +1",
        -- feet="Inspirited boots",
        waist="Gishdubar sash",
        back="Grapevine cape"

    })
    sets.midcast.Phalanx = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.aftercast.Idle[0]={    --melee
        ammo="Aurgelmir Orb",
        head="Nyame Helm",
        body="Nyame Mail",
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Sherida Earring",
        right_ear="Eabani Earring",
        left_ring="Chirich Ring +1",
        right_ring="Petrov Ring",       -- Chirich Ring +1
        back={ name="Sucellos's Cape", augments={'INT+20',}},     -- Sucellos Cape TP
        }
    sets.aftercast.Idle[1]={    --En Damage
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
        head="Nyame Helm",
        body="Nyame Mail",
        hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Mache Earring",
        left_ring="Chirich Ring +1",
        right_ring="Petrov Ring",   -- Defending Ring
        back="Moonlight Cape",
        }

    sets.aftercast.Idle[3]={}

    -- weapon_mode        
    sets.aftercast.Weapon[0]={        --Dual Swords
        main="Naegling",
        sub={ name="Egeking", augments={'Accuracy+50','Mag. Acc.+30','"Fast Cast"+8',}},
    }
        sets.aftercast.Weapon[1]={    --En Damage 0 Phys
    
        main="Ceremonial Dagger",
        sub="Ceremonial Dagger",
        }
        sets.aftercast.Weapon[2]={  -- En Damage
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