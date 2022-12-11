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
    sets.precast.JA['Nether Void'] = {legs="Heathen's Flanchard"}
    sets.precast.JA['Souleater'] = {head="Ignominy Burgonet +2"}
    sets.precast.JA['Last Resort'] = {feet="Fallen's sollerets"}
    sets.precast.JA['Weapon Bash'] = {hand="Ignominy Gauntlets +3"} 
    sets.precast.JA['Dark Seal'] = {head="Fallen's Burgeonet"}
    sets.precast.FC = {
        ammo="Sapience Orb",
        head="Sakpata's Helm",
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        right_ear="Malignance Earring",
        left_ear="Loquac. Earring",
        left_ring="Kishar Ring",
        right_ring="Naji's Loop",
        }

    sets.Impact = {head=empty,body={name="Twilight Cloak",mp=75}}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    sets.precast.WS = {
        ammo="Knobkierrie",
        head="Ratri Sallet",
        body="Ignominy Cuirass +3",
        hands="Ratri Gadlings",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Sulev. Leggings +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Thrud Earring",
        right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
        left_ring="Karieyh Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}    --default set
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {
        ammo="Knobkierrie",
        head="Ratri Sallet",
        body="Ignominy Cuirass +3",
        hands="Ratri Gadlings",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Sulev. Leggings +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Thrud Earring",
        right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
        left_ring="Karieyh Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}    --default set
    --PDL and Multi
    sets.precast.WSMulti = {
        ammo="Knobkierrie",
        head="Ratri Sallet",
        body="Ignominy Cuirass +3",
        hands="Ratri Gadlings",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Sulev. Leggings +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Thrud Earring",
        right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
        left_ring="Karieyh Ring",
        right_ring="Niqmaddu Ring",
        back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}    --default set
    

    --single    str40, int40    	2,75    2,75    2,75
    sets.precast.WS['Catastrophy'] = set_combine(sets.precast.WS, {})
    --double    str60, mnd60        2,0     4,0     7,0
    sets.precast.WS['Cross Reaper'] = set_combine(sets.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Regal Ring"
        })

    --fourfold  int73               0,75    1,25    2,0     ftp-replicating
    sets.precast.WS['Entropy'] = set_combine(sets.precast.WS, {
        ammo="Floestone",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ring="Shiva Ring"
        })
    --fourfold  str20, int20        0,5     3,25    6.0
    sets.precast.WS['Insurgency'] = set_combine(sets.precast.WS, {
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Regal Ring"
        })
    --single    str60, mnd60        3,0     3,0     3,0
    sets.precast.WS['Quietus'] = set_combine(sets.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        right_ear="Ishvara Earring"
        })
    --single    str100              1,0     1,0     1,0       
    sets.precast.WS['Spinning Scythe'] = set_combine(sets.precast.WS, {})
    --single    str40, vit40        3,0     3,0     3,0
    sets.precast.WS['Scourge'] = set_combine(sets.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}}
        })
    --single    vit80               4,75    7,5     9,77
    sets.precast.WS['Torcleaver'] = set_combine(sets.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Regal Ring"
        })
    --fivefold  str73               0,72    1,5     2,25    ftp-replicating
    sets.precast.WS['Resolution'] = set_combine(sets.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        waist="Fotia Belt",
        left_ring="Regal Ring"
        })
    --single    str30, mnd30        1,0     1,0     1,0
    sets.precast.WS['Shockwave'] = set_combine(sets.precast.WS, {})
    --double    str50, mnd50        4,0     10,25   13,75
    sets.precast.WS['Savage Blade'] = set_combine(sets.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}}
        })
    --fivefold  mnd73               1,0     1,0     1,0     ftp-replicating
    sets.precast.WS['Requiescat'] = set_combine(sets.precast.WS, {})
    --single    str100              1,0     1,0     1,0
    sets.precast.WS['Circle Blade'] = set_combine(sets.precast.WS, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast['Enfeebling Magic']  = {
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
        ammo="Hydrocera",    
        head={ name="Fallen's Burgeonet", augments={'Enhances "Dark Seal" effect',}},
        body={ name="Valorous Mail", augments={'"Drain" and "Aspir" potency +5','CHR+1','Quadruple Attack +2','Accuracy+13 Attack+13',}},
        hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="Eschite cuisses", augments={'Path: D',}},
        feet="Ratri Sollerets",
        neck="Erra Pendant",
        waist="Casso Sash",
        left_ear="Mani Earring",
        right_ear="Hirudinea Earring",
        left_ring="Excelsis Ring",
        right_ring="Evanescence Ring",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }
    sets.midcast.Endark = {
        ammo="Quartz Tathlum +1",
        head="Ig. Burgonet +2",
        body="Demon's Harness",
        hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
        legs="Heath. Flanchard",
        feet="Ratri Sollerets",
        neck="Incanter's Torque",
        waist="Casso Sash",
        left_ear="Abyssal Earring",
        right_ear="Mani Earring",
        left_ring="Stikini Ring",
        right_ring="Evanescence Ring",
        back={ name="Niht Mantle", augments={'Attack+10','Dark magic skill +8','"Drain" and "Aspir" potency +22',}}
        }
    sets.midcast['Elemental Magic'] = {
        ammo="Seething Bomblet",
        head={ name="Jumalik Helm", augments={'MND+10','"Mag.Atk.Bns."+15','Magic burst dmg.+10%','"Refresh"+1',}},
        body={ name="Fallen's Cuirass", augments={'Enhances "Blood Weapon" effect',}},
        hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        feet="Heath. Sollerets +1",
        neck="Stoicheion Medal",
        waist="Wanion Belt",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Stikini Ring",
        right_ring="Locus Ring",
        back="Merciful Cape"
        }
    sets.midcast.DreadSpikes = {
        ammo="Egoist's Tathlum",
        head="Ratri Sallet",
        body="Heathen's Cuirass",
        hands="Ratri Gadlings",
        legs="Ratri Cuisses",
        feet="Ratri Sollerets",
        waist="Eschan Stone",
        left_ear="Bloodgem Earring",
        right_ear="Cassie Earring",
        left_ring="Meridian Ring",
        right_ring="Bomb Queen Ring",
        }
    sets.midcast.Absorb = {
        ammo="Hydrocera",
        head="Ig. Burgonet +2",
        body="Flamma Korazin +2",
        hands="Pavor Gauntlets",
        legs={ name="Fall. Flanchard +3", augments={'Enhances "Muted Soul" effect',}},
        feet="Ratri Sollerets",
        neck="Erra Pendant",
        waist="Casso Sash",
        left_ear="Malignance Earring",
        right_ear="Mani Earring",
        left_ring="Kishar Ring",
        right_ring="Stikini Ring",
        back="Chuparrosa Mantle",
        }
    sets.midcast.Impact = {
        ammo="Hydrocera",
        body="Twilight Cloak",
        hands={ name="Fall. Fin. Gaunt. +2", augments={'Enhances "Diabolic Eye" effect',}},
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
        hands="Sulev. Gauntlets +2",
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
        hands="Sulev. Gauntlets +2",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Ethereal Earring",
        right_ear="Brutal Earring",
        right_ring="Defending Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
        }

    sets.aftercast.Idle[2]={    --stp
        ammo="Aurgelmir Orb",
        head="Flam. Zucchetto +2",
        body={ name="Valorous Mail", augments={'"Drain" and "Aspir" potency +5','CHR+1','Quadruple Attack +2','Accuracy+13 Attack+13',}},
        hands="Sulev. Gauntlets +2",
        legs={ name="Odyssean Cuisses", augments={'Accuracy+22 Attack+22','"Store TP"+6','STR+6','Attack+11',}},
        feet="Flam. Gambieras +2",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
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
        main="Ragnarok",
        sub="Utu Grip"
        }    
    
    sets.aftercast.Weapon[2]={  --sword
        main="Naegling",
        sub="Blurred Shield"
        }
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function precast(spell)
    if sets.precast[spell.english] then
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
    if command:lower() == 'gear3' then gear_mode = 2 end
    if command:lower() == 'gear4' then gear_mode = 3 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%3 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    if command:lower() == 'weapon3' then weapon_mode = 2 end
    equip(sets.aftercast.Weapon[weapon_mode])

    if weapon_mode == 0 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Catastrophe" t "Catastrophe"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Cross Reaper" t "Cross Reaper"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Entropy" t "Entropy"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Quietus" t "Quietus"')
    end

    if weapon_mode == 1 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Scourge" t "Scourge"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Torcleaver" t "Torcleaver"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Shockwave" t "Shockwave"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Resolution" t "Resolution"')
    end

    if weapon_mode == 2 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Spirits Within" t "Spirits Within"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end
end

