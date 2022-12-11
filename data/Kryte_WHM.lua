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
    sets.precast.JA['Benediction'] = {body="Piety Bliaut +3"}
    sets.precast.JA['Afflatus Solace'] = {body="Ebers Bliaut +2",feet="Piety Duckbills +3"}
    sets.precast.JA['Afflatus Misery'] = {body="Piety Pantaloons +3"}
    sets.precast.JA['Martyr'] = {hands="Piety Mitts +3"}
    sets.precast.JA['Divine Caress'] = {hands="Ebers Mitts +2",back="Mending Cape"}
    sets.precast.JA['Devotion'] = {head="Piety Cap +3"}
    --sets.precast.JA['ja'] = {}

    sets.precast.FC = {        
        main={ name="Gada", augments={'"Fast Cast"+6','"Mag.Atk.Bns."+16',}},
        --sub="Chanter's Shield", Cidas Cavern NM
        ammo="Impatiens",
        head="Vanya Hood",
        --head="Ebers Cap +3", 
        body="Inyanga Jubbah +2",
        hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +8','"Conserve MP"+5','"Fast Cast"+5',}}, -- Ingrid Sinister Reign Augment: Fast Cast+5/7
        legs="Inyanga Shalwar +1",
        -- legs="Volte Brais", Dynamis Sandoria D
        feet="Inyan. Crackows +1",
        -- feet="Regal Pumps +1", UNM
        neck="Cleric's torque +2",
        waist="Witful Belt",
        left_ear="Loquacious Earring",
        right_ear="Brachyura Earring",
        -- right_ear="Malignance Earring", Merit Fight
        left_ring="Roller's Ring",
        -- left_ring="Lebeche Ring", Merit Fight
        right_ring="Kishar Ring",
        back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Spell interruption rate down-10%',}},
        -- back="Fi Follet Cape +1",
        }
    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {}   
    --PDL and Multi
    sets.precast.WSMulti = {}  
    --sets.precast.WS['ws'] = set_combine(sets.precast.WSSingle, {})

    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.midcast = {}
    sets.midcast.cure = {
        main="Raetic Rod +1",
        sub="Sors Shield",
        --sub="Thuellaic ecu +1", WoE 13 Surge
        ammo="Incantor Stone",
        -- ammo="Pemphredo tathlum",
        head="Kaykaus mitra +1",
        body="Ebers Bliaut +2",
        hands="Theophany mitts +1",
        legs="Ebers Pantaloons +2",
        feet="Kaykaus boots +1",
        neck="Cleric's torque +2",
        waist="Hierarch Belt",
        -- waist="Hachirin-no-obi", Organs
        left_ear="Magnetic earring",
        right_ear="Graiai Earring",
        -- right_ear="Glorious earring",
        left_ring="Janniston Ring",
        right_ring="Mephitas's Ring +1",
        back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+5','"Cure" potency +10%','Spell interruption rate down-10%',}},}
    
    sets.midcast['Curaga']  = set_combine(sets.midcast.cure,{
        body="Theophany Bliaut +2",
        back="Twilight Cape",
        })

        sets.midcast['Enfeebling Magic']  = {
        -- main="Bunzi's Rod", Mbose unlock
        -- sub="Ammurapi shield", Kei
        ammo="Hydrocera",
        head="Theophany Cap +3",
        body="Theophany Bliaut +2",
        hands="Inyan. Dastanas +1", -- +2
        -- legs="Chironic hose", at least +30 m.acc.
        feet="Theophany duckbills +3",
        neck="Erra Pendant",
        -- neck="Jokushu chain", Escha Ru'Aun
        -- waist="Obstinate sash", Odyssey Henwen
        -- left_ear="Regal Earring",
        right_ear="Vor Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Aurist's Cape +1"
        }
    
    sets.midcast['Boost/Duration']  = {
        -- main="Gada", Enhancing Magic Duration 6%
        -- sub="Ammurapi shield", Kei
        -- ammo="Pemphredo Tathlum", Reisenjima
        head="Telchine Cap", --Enhancing Duration +8
        body="Telchine chasuble", --Enhancing Duration +10
        hands="Telchine Gloves", --Enhancing Duration +7
        -- legs="Telchine Braconi", Enhancing Magic Duration 10% Yorcia Weald (U)
        feet="Theophany duckbills +3",
        -- neck="Incanter's torque", Synergy
        waist="Embla sash",
        left_ear="Andoaa Earring",
        right_ear="Mimir Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Solemnity cape"
        }

    sets.midcast['Bar Spell']  = {
        main="Beneficus",
        -- sub="Ammurapi shield", Kei
        -- ammo="Pemphredo Tathlum", Reisenjima
        head="Ebers Cap +2",
        body="Ebers Bliaut +2",
        hands="Ebers Mitts +2",
        legs="Piety pantaloons +3",
        feet="Ebers duckbills +2",
        -- neck="Incanter's torque", Synergy 
        waist="Embla sash",
        left_ear="Andoaa Earring",
        right_ear="Mimir Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        -- back="Alaunus's Cape"
        }

    sets.midcast['Regen']  = {
        main="Bolelabunga",
        -- sub="Ammurapi shield", Kei
        -- ammo="Pemphredo Tathlum", Reisenjima
        head="Inyanga Tiara +1", -- +2
        body="Piety Bliaut +3",
        hands="Ebers Mitts +2",
        legs="Theophany Pantaloons +3", 
        feet="Theophany duckbills +3",
        --feet="Bunzi's Sabots",
        -- neck="Incanter's torque", Synergy 
        waist="Embla sash",
        left_ear="Magnetic Earring",
        -- right_ear="Gifted Earring", Maere Abyssea Grauberg
        left_ring="Mephitas's Ring +1",                                                                                                 
        right_ring="Stikini Ring +1",
        back="Solemnity cape"
        }

    sets.midcast['Stoneskin']  = {
        -- main="Gada", Enhancing Magic Duration 6%
        -- sub="Ammurapi shield", Kei
        ammo="Hydrocera",
        head="Telchine Cap",
        body="Telchine chasuble",
        hands="Telchine Gloves",
        -- legs="Shedir Seraweels", Mhaura
        feet="Theophany duckbills +3",
        -- neck="Nodens Gorget", Escha Ru'Aun
        waist="Siegel sash",
        left_ear="Earthcry Earring",
        right_ear="Mimir Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Solemnity cape"
        }

    sets.midcast['Aquaveil']  = {
        -- main="Vadose Rod", Merit Fight
        -- sub="Ammurapi shield", Kei
        ammo="Hydrocera",
        head="Chironic Hat",
        body="Telchine chasuble",
        -- hands="Regal Cuffs",
        -- legs="Shedir Seraweels",
        feet="Theophany duckbills +3",
        -- neck="Jokushu chain", Escha Ru'Aun
        waist="Emphatikos Rope",
        left_ear="Magnetic Earring",
        -- right_ear="Gifted Earring",
        left_ring="Mephitas's Ring +1",
        right_ring="Stikini Ring +1",
        back="Solemnity cape"
        }

    sets.midcast['Cursna']  = {
        -- main="Gambanteinn", Empy
        -- sub="Yagrush", MYthic
        ammo="Hydrocera",
        -- head="Vanya Hood", Healing Magic Skill +20 ziTah
        body="Ebers Bliaut +2",
        hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +8','"Conserve MP"+5','"Fast Cast"+5',}},     -- Healing Magic Skill +8/10 Sinister Reign
        legs="Theophany pantaloons +3",
        -- feet="Vanya Clogs", Healing Magic Skill +20 ziTah
        neck="Debilis Medallion",
        waist="bishop's sash",
        left_ear="Meili Earring",
        -- right_ear="Ebers Earring",
        left_ring="Haoma's Ring",
        right_ring="Menelaus's Ring",
        back="Alaunus's Cape"
        }

    sets.midcast['Repose/Flash']  = {
        -- main="Daybreak", Maiden
        -- sub="Ammurapi shield", Kei
        ammo="Hydrocera",
        head="Theophany Cap +3",
        body="Theophany Bliaut +2",
        hands="Piety Mitts +3",
        legs="Theophany pantaloons +3",
        feet="Theophany duckbills +3",
        -- neck="Jokushu chain", Escha Ru'Aun
        -- waist="Luminary sash", Reisenjjima
        -- left_ear="Regal Earring",
        -- right_ear="Malignance Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Aurist's Cape +1"
        }

    sets.midcast['Holy/Banish']  = {
        -- main="Bunzi's Rod", Mbose unlock
        -- sub="Ammurapi shield", Kei
        ammo="Ghastly Tathlum +1",
        body="Cohort cloak +1",
        -- hands="Bunzi's Gloves", Mboze
        -- legs="Bunzi's Pants",
        -- feet="Bunzi's Sabots",
        -- neck="Jokushu chain", Escha Ru'Aun
        -- waist="Luminary sash", Reisenjjima
        -- left_ear="Regal Earring",
        -- right_ear="Malignance Earring",^
        left_ring="Stikini Ring +1",
        -- left_ring="Freke Ring", Stygian Pact phantom gem
        right_ring="Stikini Ring +1",
        -- back="Alaunus's Cape" MND+30, Mag. Acc/Dmg +20, MAB+10
        }

    -- sets.midcast['Elemental Magic']  = {}
    --sets.midcast.magic = {}

    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.aftercast = {}
    sets.aftercast.Idle = {}
    sets.aftercast.Idle[0]={    -- Refresh
        ammo="Homiliary",  
        -- head="Volte Beret",
        head="Wayfarer Circlet",
        body="Ebers Bliaut +2",
        -- hands="Volte gloves",
        hands="Ebers Mitts +2",
        -- legs="Volte brais",
        legs="Wayfarer Slops",
        -- feet="Volte gaiters",
        feet="Herald's Gaiters",
        neck="Twilight Torque",
        waist="Isa Belt",
        -- left_ear="Etiolation earring",
        left_ear="Orison Earring",
        right_ear="Magnetic earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Iximulew Cape",}

    sets.aftercast.Idle[1]={ -- DT
        ammo="Staunch Tathlum +1",          --3%
        head="Aya. Zucchetto +1",           --2%
        body="Ayanmo Corazza +2",           --6%
        hands="Ebers Mitts +2",             --10%
        legs="Aya. Cosciales +1",           --4%
        feet="Ebers Duckbills +2",          --10%
        neck="Twilight Torque",             --5%
        waist="Isa Belt",                   --3%
        -- left_ear="Etiolation earring",
        left_ear="Orison Earring",
        right_ear="Magnetic earring",
        left_ring="Defending Ring",         --10%
        right_ring="Stikini Ring +1",
        back="Iximulew Cape",}            --4%PD


    sets.aftercast.Weapon = {}   
    sets.aftercast.Weapon[0]={    -- Staff
        -- main="Mpaca's staff", Arebati
        main="Bolelabunga",
        sub="Sors Shield",
        -- sub="Irenic Strap",
    }       
    sets.aftercast.Weapon[1]={   -- Club
        main="Raetic Rod +1",
        sub="Sors Shield",}    




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
    if string.find(spell.english,'Cure') then 
        equip(sets.midcast.cure)
    elseif string.find(spell.english,"Cura") then
        equip(sets.midcast.cure)
    elseif spell.english == 'Cursna' then
        equip(sets.midcast['Cursna'])
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets.midcast['Enfeebling Magic'])
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.midcast['Boost/Duration'])
    elseif spell.english == ('Repose' or 'Flash') then
        equip(sets.midcast['Repose/Flash'])
    elseif spell.english == ('Holy' or 'Banish') then
        equip(sets.midcast['Holy/Banish'])
    elseif string.find(spell.english,'Bar') then
        equip(sets.midcast['Bar Spell'])
    elseif spell.english == 'Regen' then
        equip(sets.midcast['Regen'])
    elseif spell.english == 'Stoneskin' then
        equip(sets.midcast['Stoneskin'])
    elseif spell. english == 'Aquaveil' then
        equip(sets.midcast['Aquaveil'])
    elseif spell.skill then
        equip(sets.aftercast.Idle)
    end
end

function buff_change(name, gain, buff_details)
    if name == 'Sleep'
    then
        if gain
        then 
            equip({main="Prime Maul"})
        end
    end
end

function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

-- function status_change(new_status, old_status)
--     if new_status == 'Idle' then
--         equip(  {feet="Herald's Gaiters"})0
--     elseif
--         new_status == 'Engaged' then
--         equip(sets.aftercast.Idle[gear_mode])
--     end
-- end
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
    if command:lower() == 'weapon4' then weapon_mode = 3 end
    equip(sets.aftercast.Weapon[weapon_mode])
	switch_crossbar(weapon_mode)	    
    
end

function switch_crossbar(mode)
    if mode == 0 or mode == 1 then
        send_command('input //xivcrossbar set job-default 2 6 ws "Hexa Strike" t "Hexa Strike"')
        send_command('input //xivcrossbar set job-default 2 7 ws "Black Halo" t "Black Halo"')
        send_command('input //xivcrossbar set job-default 2 8 ws "Starlight" t "Starlight"')
        send_command('input //xivcrossbar set job-default 2 5 ws "Judgment" t "Judgment"')
end

--     if mode == 0 then
--         send_command('input //xivcrossbar set job-default 2 6 ws "Cataclysm" t "Cataclysm"')
--         send_command('input //xivcrossbar set job-default 2 7 ws "Earth Crusher" t "Earth Crusher"')
--         send_command('input //xivcrossbar set job-default 2 8 ws "Spirit Taker" t "Spirit Taker"')
--         send_command('input //xivcrossbar set job-default 2 5 ws "Retribution" t "Retribution"')
-- end


end
