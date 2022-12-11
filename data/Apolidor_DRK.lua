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
	sets.precast.JA['Arcane Circle'] = {feet="Ignominy Sollerets +3"}
    sets.precast.JA['Nether Void'] = {legs="Heath. Flanchard +1"}
    sets.precast.JA['Last Resort'] = {feet="Fallen's sollerets",back="Ankou's Mantle"}
    sets.precast.JA['Weapon Bash'] = {hands="Ig. Gauntlets +3"} 
    sets.precast.JA['Dark Seal'] = {head={ name="Fallen's Burgeonet", augments={'Enhances "Dark Seal" effect',}}}  
	sets.precast.JA['Blood Weapon'] = {body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}}}
    sets.precast.FC = {                     --58%
        ammo="Sapience Orb",                --2%    
		head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}}, --12%
		--head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}}, --14%
		body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}}, --10%
		--hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}}, --8%
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},  --5%
		feet="Carmine Greaves +1", --8%
		--neck="Voltsurge Torque", --4%
        right_ear="Malignance Earring",     --4%
        left_ear="Loquac. Earring",         --2%
        left_ring="Kishar Ring",            --4%
        right_ring="Naji's Loop",           --1%
        back={ name="Ankou's Mantle", augments={'"Fast Cast"+10',}}, --10%
    }
    sets.Impact = set_combine(sets.precast.FC, {head=empty,body={name="Twilight Cloak",mp=75}})

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {
        ammo="Knobkierrie",
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        body="Ignominy Cuirass +3",
        hands="Sakpata's Gauntlets",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Sulev. Leggings +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        --neck={ name="Abyssal Beads +2", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Thrud Earring",
        right_ear="Ishvara Earring",
        left_ring="Karieyh Ring",
		--left_ring="Epaminondas's Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}
    --PDL and Multi
    sets.precast.WSMulti = {
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
        right_ring="Niqmaddu Ring",
        left_ring="Regal Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},}
    

    --single    str40, int40    	2,75    2,75    2,75
    sets.precast['Catastrophe'] = set_combine(sets.precast.WSSingle, {})
    --double    str60, mnd60        2,0     4,0     7,0
    sets.precast['Cross Reaper'] = set_combine(sets.precast.WSMulti, {})
    --fourfold  int73               0,75    1,25    2,0     ftp-replicating
    sets.precast['Entropy'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",
        })
    --fourfold  str20, int20        0,5     3,25    6.0
    sets.precast['Insurgency'] = set_combine(sets.precast.WSMulti, {})
    --single    str60, mnd60        3,0     3,0     3,0
    sets.precast['Quietus'] = set_combine(sets.precast.WSSingle, {})
    --single    str100              1,0     1,0     1,0       
    sets.precast['Spinning Scythe'] = set_combine(sets.precast.WSSingle, {})
    --single    str40, vit40        3,0     3,0     3,0
    sets.precast['Scourge'] = set_combine(sets.precast.WSSingle, {})
    --single    vit80               4,75    7,5     9,77
    sets.precast['Torcleaver'] = set_combine(sets.precast.WSSingle, {
        head="Sakpata's Helm",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
        waist="Fotia Belt",
	    })
    --fivefold  str73               0,72    1,5     2,25    ftp-replicating
    sets.precast['Resolution'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",
        })
    --single    str30, mnd30        1,0     1,0     1,0
    sets.precast['Shockwave'] = set_combine(sets.precast.WSSingle, {
        neck="Fotia Gorget",
        waist="Fotia Belt",})
    --double    str50, mnd50        4,0     10,25   13,75
    sets.precast['Savage Blade'] = set_combine(sets.precast.WSSingle, {
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        })
    --fivefold  mnd73               1,0     1,0     1,0     ftp-replicating
    sets.precast['Requiescat'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",})
    --single    str100              1,0     1,0     1,0
    sets.precast['Circle Blade'] = set_combine(sets.precast.WSSingle, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {} 
    sets.midcast['Enfeebling Magic']  = { 
	    -- sub="Konsu Grip",
	    sub="Ajja Grip",
        ammo="Quartz Tathlum +1",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +2",
        hands="Ratri Gadlings",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Flam. Gambieras +2",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear={ name="Lugra Earring +1", augments={'Path: A',}},
        right_ear="Abyssal Earring",
        left_ring="Kishar Ring",
        right_ring="Stikini Ring",
        back="Chuparrosa Mantle",
        }
    sets.midcast.Drain = {
	    -- sub="Konsu Grip",
		-- range="Ullr",
		range="Ajja Bow",  
	    sub="Ajja Grip",
        head={ name="Fallen's Burgeonet", augments={'Enhances "Dark Seal" effect',}},
        -- head={ name="Fallen's Burgeonet +3", augments={'Enhances "Dark Seal" effect',}},
        body={ name="Valorous Mail", augments={'"Drain" and "Aspir" potency +5','CHR+1','Quadruple Attack +2','Accuracy+13 Attack+13',}},
        -- ???body="Carm. Sc. Mail +1",
        hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
		legs="Fallen's Flanchard +3",
        feet="Ratri Sollerets",
		-- feet="Ratri Sollerets +1",
        neck="Erra Pendant",
        waist="Casso Sash",
		-- waist="Austerity belt +1",
        left_ear="Mani Earring",
        right_ear="Hirudinea Earring",
		-- right_ear="Malignance Earring",
        left_ring="Excelsis Ring",
		-- left_ring="Archon Ring",
        right_ring="Evanescence Ring",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }
    sets.midcast.Endark = {
        head="Ig. Burgonet +2",
        --head="Ig. Burgonet +3",
        body="Demon's Harness",
		--body="Carmine Scale Mail +1",
        hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
		legs="Heathen's flanchard +1",
        feet="Ratri Sollerets",
		--feet="Ratri Sollerets +1",
        neck="Incanter's Torque",
        waist="Casso Sash",
        left_ear="Abyssal Earring",
        right_ear="Mani Earring",
        left_ring="Stikini Ring",
        right_ring="Evanescence Ring",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }
    sets.midcast['Elemental Magic'] = {    
	    -- sub="Konsu Grip",
	    sub="Ajja Grip",
        ammo="Seething Bomblet",
        head={ name="Jumalik Helm", augments={'MND+10','"Mag.Atk.Bns."+15','Magic burst dmg.+10%','"Refresh"+1',}},
        body={ name="Fall. Cuirass +3", augments={'Enhances "Blood Weapon" effect',}},
        hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        neck="Stoicheion Medal",
        waist="Eschan Stone",
        left_ear="Friomisi Earring",
        right_ear="Malignance Earring",
        left_ring="Stikini Ring",
        right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        back="Merciful Cape",
        }
    sets.midcast.DreadSpikes = {
        ammo="Egoist's Tathlum",
        head="Ratri Sallet",
		--head="Ratri Sallet +1",
        body="Heathen's Cuirass",
		--body="Heathen's Cuirass +1",
        hands="Ratri Gadlings",
		--hands="Ratri Gadlings +1",
        legs="Ratri Cuisses",
		--legs="Ratri Cuisses +1",
        feet="Ratri Sollerets",
		--feet="Ratri Sollerets +1",
        waist="Eschan Stone",
        left_ear="Bloodgem Earring",
		--left_ear="Odnowa Earring +1",
        right_ear="Cassie Earring",
		--right_ear="Odnowa Earring",
        left_ring="Meridian Ring",
        right_ring="Bomb Queen Ring",
		--right_ring="Gelatinous Ring +1",
        }
    sets.midcast.Absorb = {   
	    -- sub="Konsu Grip",
		-- range="Ullr",
		range="Ajja Bow",  
	    sub="Ajja Grip",
        head="Ig. Burgonet +2",
        --head="Ig. Burgonet +3",
        body="Nyame mail",
		--body="Carmine Scale Mail +1",
        hands="Pavor Gauntlets",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Ratri Sollerets",
        --feet="Ratri Sollerets +1",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear="Malignance Earring",
        right_ear="Mani Earring",
        left_ring="Kishar Ring",
        right_ring="Stikini Ring",
        --right_ring="Stikini Ring +1",
        back="Chuparrosa Mantle",
        }
    sets.midcast['Stun'] = {   
	    -- sub="Konsu Grip",
		-- range="Ullr",
		range="Ajja Bow",  
	    sub="Ajja Grip",
        head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
		--head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
        body="Nyame mail",
        --body="Carmine Scale Mail +1",
        hands="Nyame Gauntlets",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Nyame Sollerets",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear="Malignance Earring",
        right_ear="Mani Earring",
        left_ring="Kishar Ring",
        right_ring="Stikini Ring",
        --right_ring="Stikini Ring +1",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }    
    sets.midcast.Impact = {
	    -- sub="Konsu Grip",
		-- range="Ullr",
		range="Ajja Bow",  
	    sub="Ajja Grip",
        body="Twilight Cloak",
        hands={ name="Fall. Fin. Gaunt. +3", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        feet="Heath. Sollerets +1",
        neck="Erra Pendant",
        waist="Eschan Stone",
        left_ear="Abyssal Earring",
        right_ear="Mani Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }


    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Idle[0]={    --normal
        ammo="Coiste Bodhar",
        head="Flam. Zucchetto +2",
        body={ name="Valorous Mail", augments={'"Drain" and "Aspir" potency +5','CHR+1','Quadruple Attack +2','Accuracy+13 Attack+13',}},
        hands="Sakpata's Gauntlets",
        legs="Ig. Flanchard +3",
        feet="Flam. Gambieras +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Petrov Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
        }

    sets.aftercast.Idle[1]={    --dt
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Ethereal Earring",
        right_ear="Brutal Earring",
        right_ring="Defending Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
        }

    sets.aftercast.Idle[2]={    --subtle blow
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        neck={"Bathy choker +1"},                                   --11
        --left_ear="Dignitary's earring",                           --5
        --right_ear="Schere Earring",                               --3
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        body="Flamma Korazin +2",                                   --17
        --body="Dragon breastplate",                            --(2) 10
        --body="Sulevia's Plate. +2", DT                            --5
        hands="Sakpata's Gauntlets",                                --8  
        right_ring="Niqmaddu Ring",                             --(2) 5
        left_ring="Chirich Ring +1",                                --10
        --back={ name="Ankou's Mantle", augments={'???,}},          --??
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        --waist="Peiste Belt +1,                                    --10
        legs="Sakpata's Cuisses",  
        --legs="Sulev. Cuisses +2",                                 --5
        feet="Sakpata's Leggings",
        --feet="Sulev. Leggings +2",                                --5
        }

    sets.aftercast.Idle[3]={    --acc
        ammo="Seething Bomblet",
        head="Flam. Zucchetto +2",
        body={ name="Valorous Mail", augments={'"Drain" and "Aspir" potency +5','CHR+1','Quadruple Attack +2','Accuracy+13 Attack+13',}},
        hands="Sulev. Gauntlets +2",
        legs="Ig. Flanchard +3",
        feet="Flam. Gambieras +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist="Wanion Belt",
        left_ear="Cessance Earring",
        right_ear="Abyssal Earring",
        left_ring="Flamma Ring",
        right_ring="Varar Ring +1",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
        }
    
    sets.aftercast.Weapon = {}      
    sets.aftercast.Weapon[0]={  --scythe
        main="Apocalypse",
        sub="Utu Grip"
        }    
    
    sets.aftercast.Weapon[1]={  --gs
        main="Caladbolg",
        sub="Utu Grip"
        }    
    
    sets.aftercast.Weapon[2]={  --sword
        main="Naegling",
        sub="Blurred Shield"
        }
    sets.aftercast.Weapon[3]={  --Soul Eater
        main="Agwu's Scythe",
        sub="Utu Grip",
        head="Ignominy Burgonet +2"
        }    
 
end

-- function create_text_gearset()
--     windower.text.create(gearset)
--     windower.text.set_location(gearset, 250, 250)
--     windower.text.set_text(gearset, test)
--     windower.text.set_bg_visibility(gearset, true)
--     windower.text.set_bg_color(gearset, 125, 125, 125, 125)
-- end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function precast(spell)
    if sets.precast.JA[spell.english] then
        equip(sets.precast.JA[spell.english])
    elseif sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    elseif spell.english == 'Impact' then
        equip(sets.Impact)
    elseif spell.action_type == 'Magic' then
            equip(sets.precast.FC)
    end
end

function midcast(spell)    
    if string.find(spell.english,'Absorb') then 
        equip(sets.midcast.Absorb)
    elseif spell.english == 'Impact' then
        equip(sets.midcast.Impact)
    elseif spell.english == 'Dread Spikes' then
        equip(sets.midcast.DreadSpikes)
    elseif string.find(spell.english,'Drain') then
        equip(sets.midcast.Drain)
    elseif string.find(spell.english,'Endark') then
        equip(sets.midcast.Endark)
    elseif spell.skill == 'Elemental Magic' then
        equip(sets.midcast['Elemental Magic'])
    elseif spell.skill == "Enfeebling Magic" then
        equip(sets.midcast['Enfeebling Magic'])
    elseif spell.skill then
        equip(sets.aftercast.Idle)
    end
end

function buff_change(name, gain, buff_details)
    if name == 'Souleater'
    then
        if gain
        then
            weapon_mode = 3
        else 
            weapon_mode = 1
        end
        equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
        switch_crossbar(weapon_mode)
    end
end


function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%3 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    if command:lower() == 'gear3' then gear_mode = 2 end
    if command:lower() == 'gear4' then gear_mode = 3 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%3 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    if command:lower() == 'weapon3' then weapon_mode = 2 end
    if command:lower() == 'weapon4' then weapon_mode = 3 end
    equip(sets.aftercast.Weapon[weapon_mode])
	switch_crossbar(weapon_mode)	    
    
end

function switch_crossbar(mode)
	if mode == 0 or mode == 3 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Catastrophe" t "Catastrophe"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Cross Reaper" t "Cross Reaper"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Entropy" t "Entropy"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Insurgency" t "Insurgency"')
    end

    if mode == 1 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Frostbite" t "Frostbite"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Torcleaver" t "Torcleaver"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Shockwave" t "Shockwave"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Resolution" t "Resolution"')
    end

    if mode == 2 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Spirits Within" t "Spirits Within"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end


end
