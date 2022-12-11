include('organizer-lib')

function get_sets()
    --------------------------------------
    -- Variables
    --------------------------------------
    gear_mode = 0
    weapon_mode = 0

    --------------------------------------
    -- Reforged Gear
    --------------------------------------
	--sets.af = {}
    --sets.af.head = "Pummeler's Mask +2"
	--sets.af.body = "Pummeler's Lorica +3"
	--sets.af.hands = "Fighter's Mufflers"         
	--sets.af.legs = "Pummeler's Cuisses +3"
	--sets.af.feet = "Pummeler's Calligae +3" 
	
	HAHAHAHAHa

	
	--sets.relic = {}
    --sets.relic.head = "Agoge Mask +3"            
	--sets.relic.body = "Agoge Lorica +3"           
	--sets.relic.hands = "Agoge Mufflers +3"       
	--sets.relic.legs = "Agoge Cuisses +3"          
	--sets.relic.feet = "Agoge Calligae +3"        
	
	--sets.empy = {}
    --sets.empy.head = "Boii Mask +2"   
	--sets.empy.body = "Boii Lorica +2"
	--sets.empy.hands = "Boii Mufflers +2"
	--sets.empy.legs = "Boii Cuisses +2" 
	--sets.empy.feet = "Boii Calligae +2"




    --------------------------------------
    -- Precast sets
    --------------------------------------
    sets.precast = {}
    sets.precast.JA = {}
	sets.precast.JA['Beserk'] = {feet="Agoge Calligae +3",body="Pummeler's Lorica +3",back="Cichol's Mantle",main="Instigator"}
    sets.precast.JA['Blood Rage'] = {body="Boii Lorica +2"}
    sets.precast.JA['Warcry'] = {head="Agoge Mask +3"}
    sets.precast.JA['Aggressor'] = {body="Agoge Lorica +3",head="Pummeler's Mask +2",main="Instigator"}
    sets.precast.JA['Mighty Strikes'] = {hands="Agoge Mufflers +3"} 
    sets.precast.JA['Restraint'] = {hands="Boii Mufflers +2"} 
	sets.precast.JA['Retaliation'] = {hands="Fighter's Mufflers",feet="Boii Calligae +2"}
    sets.precast.JA['Defender'] = {hands="Agoge Mufflers +3"}
    sets.precast.FC = {}
    

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    
    
    sets.precast.WSStrength = {
        ammo="Knobkierrie",
        head="Agoge Mask +3",
        body="Pummeler's Lorica +3",
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Sulev. Leggings +2",
        neck="War. Beads +2",
        waist="Sailfi Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Thrud Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Karieyh Ring",
        back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
    --WSD, PDL if ATK-Capped Vitality Based
    sets.precast.WSVitality = {
        ammo="Knobkierrie",
        head="Agoge Mask +3",
        body="Pummeler's Lorica +3",
        hands="Nyame Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sulev. Leggings +2",
        neck="War. Beads +2",
        waist="Sailfi Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Thrud Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Karieyh Ring",
        back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},}
        --PDL and Multi
    sets.precast.WSMulti = {
        ammo="Knobkierrie",
        head="Agoge Mask +3",
        body="Pummeler's Lorica +3",
        hands="Nyame Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sulev. Leggings +2",
        neck="War. Beads +2",
        waist="Sailfi Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Thrud Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Karieyh Ring",
        back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},}
    
    --double   str80              	2,75    2,75    2,75
    sets.precast['Ukko&apos;s Fury'] = set_combine(sets.precast.WSStrength, {})
    --single    str40, int40    	2,75    2,75    2,75
    sets.precast['Upheaval'] = set_combine(sets.precast.WSVitality, {})
    --double    str60, mnd60        2,0     4,0     7,0
    sets.precast['Fell Cleave'] = set_combine(sets.precast.WSStrength, {})
    --fourfold  int73               0,75    1,25    2,0     ftp-replicating
    sets.precast['Steel Cyclone'] = set_combine(sets.precast.WSStrength, {})
    --fivefold  str73               0,72    1,5     2,25    ftp-replicating
    sets.precast['Resolution'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",
        })
    --single    str30, mnd30        1,0     1,0     1,0
    sets.precast['Shockwave'] = set_combine(sets.precast.WSStrength, {
        neck="Fotia Gorget",
        waist="Fotia Belt",})
    --double    str50, mnd50        4,0     10,25   13,75
    sets.precast['Savage Blade'] = set_combine(sets.precast.WSStrength, {
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        })
    --fivefold  mnd73               1,0     1,0     1,0     ftp-replicating
    sets.precast['Requiescat'] = set_combine(sets.precast.WSMulti, {
        neck="Fotia Gorget",
        waist="Fotia Belt",})
    --single    str100              1,0     1,0     1,0
    sets.precast['Circle Blade'] = set_combine(sets.precast.WSStrength, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {} 
    sets.midcast = {}
    

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Idle[0]={    -- TP Gear 
        ammo="Coiste Bodhar",
        head="Flam. Zucchetto +2",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Pummeler's Cuisses +3",
        feet="Pummeler's Calligae +3",
        neck="War. Beads +2",
        waist="Ioskeha Belt +1",
        left_ear="Cessance Earring",
        right_ear="Schere Earring",
        left_ring="Niqmaddu Ring",
        right_ring="Petrov Ring",
        back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        }

    sets.aftercast.Idle[1]={    --dt
        ammo="Coiste Bodhar",
        head="Sakpata's Helm",
        body="Sakpata's Plate",
        hands="Sakpata's Gauntlets",
        legs="Sakpata's Cuisses",
        feet="Sakpata's Leggings",
        neck="Twilight Torque",
        waist="Nierenschutz",
        left_ear="Cessance Earring",
        right_ear="Brutal Earring",
        left_ring="Sulevia's Ring",
        right_ring="Defending Ring",
        back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

    sets.aftercast.Idle[2]={}

    sets.aftercast.Idle[3]={}
    
    sets.aftercast.Weapon = {}   
    sets.aftercast.Weapon[0]={  --greataxe
        main="Ukonvasara",
        sub="Utu Grip"
        }    
    
    sets.aftercast.Weapon[1]={  --greataxe
        main="Chango",
        sub="Utu Grip"
        }    
    
    sets.aftercast.Weapon[2]={  --GS
        main="Montante +1",
        sub="Utu Grip"
        }    
    
    sets.aftercast.Weapon[3]={  --sword
        main="Naegling",
        sub="Blurred Shield +1"
        }

    sets.aftercast.Weapon[4]={  --Crit
        main="Naegling",
        sub="Voluspa Knife",
        }    

    sets.aftercast.Weapon[5]={  --Spear
        main="Shining One",
        sub="Utu Grip"
        }    
        
    sets.aftercast.Weapon[6]={  --Club
        main="Loxotic Mace +1",
        sub="Blurred Shield +1"
        }    

end

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
            weapon_mode = 99
        else 
            weapon_mode = 0
        end
        equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))
        switch_crossbar(weapon_mode)
    end
end

function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

function status_change(new_status, old_status)
    if new_status == 'Idle' then
        equip(  {feet="Hermes' Sandals"})

    elseif
        new_status == 'Engaged' then
        equip(sets.aftercast.Idle[gear_mode])
    end
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

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%7 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    if command:lower() == 'weapon3' then weapon_mode = 2 end
    if command:lower() == 'weapon4' then weapon_mode = 3 end
    equip(sets.aftercast.Weapon[weapon_mode])
	switch_crossbar(weapon_mode)	    
    
    switch_statustext(gear_mode,weapon_mode)

end

function switch_statustext(gear_mode,weapon_mode)
    if gear_mode == 0 then
        gear_description = "TP-Gear"
    elseif gear_mode == 1 then
        gear_description = "DamageTaken"
    -- elseif gear_mode == 2 then
    --    geardescription = "SubtleBlow"
    end

    if weapon_mode == 0 then
        weapon_description = "Great Axe"
    elseif weapon_mode == 1 then
        weapon_description = "Great Axe"
    elseif weapon_mode == 2 then
        weapon_description = "Great Sword"
    elseif weapon_mode == 3 then
        weapon_description = "Sword"
    elseif weapon_mode == 4 then
        weapon_description = "Sword and Dagger"
    elseif weapon_mode == 5 then
        weapon_description = "Polearm"
    elseif weapon_mode == 6 then
        weapon_description = "Club"
    end
    send_command('input //text status text Gear:'..gear_description..' Weapon:'..weapon_description)
end

function switch_crossbar(mode)
	if mode == 0 or mode == 1 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Upheaval" t "Upheaval"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Ukko\'s Fury" t "Ukko s Fury"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Fell Cleave" t "Fell Cleave"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Steel Cyclone" t "Steel Cyclone"')
    end

    if mode == 2 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Scourge" t "Scourge"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Resolution" t "Resolution"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Shockwave" t "Shockwave"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Herculean Slash" t "Herculean Slash"')
    end

    if mode == 3 or mode == 4 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Savage Blade" t "Savage Blade"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Requiescat" t "Requiescat"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Spirits Within" t "Spirits Within"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Sanguine Blade" t "Sanguine Blade"')
    end
    if mode == 5 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Impulse Drive" t "Impulse Drive"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Impulse Drive" t "Impulse Drive"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Impulse Drive" t "Impulse Drive"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Impulse Drive" t "Impulse Drive"')
    end
    if mode == 6 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Judgement" t "Judgement"')
        send_command('input //xivcrossbar set job-default 2 7 ws "True Strike" t "True Strike"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Seraph Strike" t "Seraph Strike"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Black Halo" t "Black Halo"')
    end

end
