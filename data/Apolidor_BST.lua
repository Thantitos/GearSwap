include('organizer-lib')

function get_sets()

    sets.DRK = {}
    sets.blm = {}
    sets.pld = {}
    sets.mnk = {}
    sets.smn = {}
    sets.thf = {}

    sets.DRK.precast = {}
    sets.DRK.precast.JA = {}
    sets.DRK.precast.JA['Nether Void'] = {legs="Heathen's Flanchard"}
    sets.DRK.precast.JA['Souleater'] = {head="Ignominy Burgonet +2"}
    sets.DRK.precast.JA['Last Resort'] = {feet="Fallen's sollerets"}
    sets.DRK.precast.JA['Weapon Bash'] = {hand="Ignominy Gauntlets +3"} 
    sets.DRK.precast.JA['Dark Seal'] = {head="Fallen's Burgeonet"}
    sets.DRK.precast.FC = {
        ammo="Sapience Orb",
        body="Lugra Cloak +1",
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        right_ear="Malignance Earring",
        left_ear="Loquac. Earring",
        left_ring="Kishar Ring",
        right_ring="Naji's Loop",
        }
    
    sets.DRK.Impact = {head=empty,body={name="Twilight Cloak",mp=75}}
    
    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    sets.DRK.precast.WS = {
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
    
    sets.DRK.precast.WS['Catastrophy'] = set_combine(sets.DRK.precast.WS, {})
    sets.DRK.precast.WS['Cross Reaper'] = set_combine(sets.DRK.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Regal Ring"
        })
    
    sets.DRK.precast.WS['Entropy'] = set_combine(sets.DRK.precast.WS, {
        ammo="Floestone",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ring="Shiva Ring"
        })
    
    sets.DRK.precast.WS['Insurgency'] = set_combine(sets.DRK.precast.WS, {
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Regal Ring"
        })
    
    sets.DRK.precast.WS['Quietus'] = set_combine(sets.DRK.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        right_ear="Ishvara Earring"
        })
           
    sets.DRK.precast.WS['Spinning Scythe'] = set_combine(sets.DRK.precast.WS, {})
    
    sets.DRK.precast.WS['Scourge'] = set_combine(sets.DRK.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}}
        })
    
    sets.DRK.precast.WS['Torcleaver'] = set_combine(sets.DRK.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        left_ring="Regal Ring"
        })
    
    sets.DRK.precast.WS['Resolution'] = set_combine(sets.DRK.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        waist="Fotia Belt",
        left_ring="Regal Ring"
        })
    sets.DRK.precast.WS['Shockwave'] = set_combine(sets.DRK.precast.WS, {})
    
    sets.DRK.precast.WS['Savage Blade'] = set_combine(sets.DRK.precast.WS, {
        head={ name="Stinger Helm +1", augments={'Path: A',}},
        right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}}
        })
    sets.DRK.precast.WS['Requiescat'] = set_combine(sets.DRK.precast.WS, {})
    sets.DRK.precast.WS['Circle Blade'] = set_combine(sets.DRK.precast.WS, {})
    
    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.DRK.midcast = {}
    sets.DRK.midcast['Enfeebling Magic']  = {
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
    sets.DRK.midcast.Drain = {
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
    sets.DRK.midcast.Endark = {
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
    sets.DRK.midcast['Elemental Magic'] = {
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
    sets.DRK.midcast.DreadSpikes = {
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
    sets.DRK.midcast.Absorb = {
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
    sets.DRK.midcast.Impact = {
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
    sets.DRK.aftercast = {}
    sets.DRK.aftercast.Idle = {}
    sets.DRK.aftercast.Idle[0]={    --normal
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
    
    sets.DRK.aftercast.Idle[1]={    --dt
        ammo="Coiste Bodhar",
        head="Sulevia's Mask +2",
        body="Sakpata's Plate",
        hands="Sulev. Gauntlets +2",
        legs="Sulev. Cuisses +2",
        feet="Sakpata's Leggings",
        neck={ name="Abyssal Beads +1", augments={'Path: A',}},
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Ethereal Earring",
        right_ear="Brutal Earring",
        left_ring="Sulevia's Ring",
        right_ring="Defending Ring",
        back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
        }
    
    sets.DRK.aftercast.Idle[2]={    --stp
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
    
    sets.DRK.aftercast.Idle[3]={    --acc
        ammo="Seething Bomblet",
        head="Flam. Zucchetto +2",
        body="Sulevia's Plate. +2",
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
    
    sets.DRK.aftercast.Weapon = {}      
    sets.DRK.aftercast.Weapon[0]={  --scythe
        main="Apocalypse",
        sub="Utu Grip"
        }    
    
    sets.DRK.aftercast.Weapon[1]={  --gs
        main="Ragnarok",
        sub="Utu Grip"
        }  

        sets.DRK.aftercast.Weapon[2]={  --sword
        main="Naegling",
        sub="Blurred Shield"
        }

    sets.blm.precast = {}
sets.blm.precast.JA = {}
--sets.blm.precast.JA['ja'] = {}
sets.blm.precast.FC = {
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
sets.blm.precast.WS = {}        
--sets.blm.precast.WS['ws'] = set_combine(sets.blm.precast.WS, {})

--------------------------------------
-- Midcast sets
--------------------------------------
sets.blm.midcast = {}
-- sets.blm.midcast['Enfeebling Magic']  = {}
-- sets.blm.midcast['Enhancing Magic']  = {}
sets.blm.midcast['Elemental Magic']  = {  
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
-- sets.blm.midcast.magic = {}

--------------------------------------
-- Idle/resting/defense/etc sets
--------------------------------------
sets.blm.aftercast = {}
sets.blm.aftercast.Idle = {}
sets.blm.aftercast.Weapon = {}  

-- gear_mode
sets.blm.aftercast.Idle[0]={    --refresh
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
sets.blm.aftercast.Idle[1]={}

sets.mnk.precast = {}
sets.mnk.precast.JA = {}
--sets.mnk.precast.JA['ja'] = {}
sets.mnk.precast.FC = {}

--------------------------------------
-- Weaponskill sets
--------------------------------------
-- default set
sets.mnk.precast.WS = {}        
sets.mnk.precast.WS['Victory Smite'] = set_combine(sets.mnk.precast.WS, {
    ammo="Knobkierrie",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Ken. Samue",
    hands="Anchor. Gloves +3",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
    })
sets.mnk.precast.WS['Asuran Fists'] = set_combine(sets.mnk.precast.WS, {
    ammo="Knobkierrie",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Ken. Samue",
    hands="Anchor. Gloves +3",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
    left_ear="Sherida Earring",
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Karieyh Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
    })
sets.mnk.precast.WS['Raging Fists'] = set_combine(sets.mnk.precast.WS, {
    ammo="Knobkierrie",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Ken. Samue",
    hands="Anchor. Gloves +3",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
    })
sets.mnk.precast.WS['Howling Fist'] = set_combine(sets.mnk.precast.WS, {
    ammo="Knobkierrie",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Ken. Samue",
    hands="Anchor. Gloves +3",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
    })
sets.mnk.precast.WS['Shijin Spiral'] = set_combine(sets.mnk.precast.WS, {
    ammo="Knobkierrie",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Ken. Samue",
    hands="Anchor. Gloves +3",
    legs="Hiza. Hizayoroi +2",
    feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
    neck="Fotia Gorget",
    waist="Moonbow Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Regal Ring",
    back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
    })

--------------------------------------
-- Midcast sets
--------------------------------------
sets.mnk.midcast = {}
-- sets.mnk.midcast['Enfeebling Magic']  = {}
-- sets.mnk.midcast['Enhancing Magic']  = {}
-- sets.mnk.midcast['Elemental Magic']  = {}
--sets.mnk.midcast.magic = {}

--------------------------------------
-- Idle/resting/defense/etc sets
--------------------------------------
sets.mnk.aftercast = {}
sets.mnk.aftercast.Idle = {}
sets.mnk.aftercast.Weapon = {}  

-- gear_mode
sets.mnk.aftercast.Idle[0]={    --normal
    main="Karambit",
    ammo="Aurgelmir Orb",
    head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
    body="Ken. Samue",
    hands={ name="Adhemar Wristbands", augments={'DEX+10','AGI+10','Accuracy+15',}},
    legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
    neck="Moonbeam Nodowa",
    waist="Moonbow Belt +1",
    left_ear="Cessance Earring",
    right_ear="Sherida Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Rajas Ring",
    back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','MND+2','DEF+8',}},
    --back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
    }
sets.mnk.aftercast.Idle[1]={    --DT
    main="Karambit",
    ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body={ name="Herculean Vest", augments={'Accuracy+14','"Triple Atk."+4','Attack+15',}},
    hands="Malignance Gloves",
    legs={ name="Samnuha Tights", augments={'STR+7','"Dbl.Atk."+2','"Triple Atk."+1',}},
    feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','STR+6','Accuracy+12','Attack+11',}},
    neck="Twilight Torque",
    waist="Moonbow Belt +1",
    left_ear="Cessance Earring",
    right_ear="Sherida Earring",
    left_ring="Defending Ring",
    right_ring="Rajas Ring",
    back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','MND+2','DEF+8',}},
    }
    sets.pld.precast = {}
    sets.pld.precast.JA = {}
    --sets.pld.precast.JA['ja'] = {}
    sets.pld.precast.FC = {
        ammo="Sapience Orb",
        hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        left_ear="Loquac. Earring",
        right_ear="Nourish. Earring +1",
        right_ring="Naji's Loop",
        left_ring="Kishar Ring",
        }

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.pld.precast.WS = {}        
    sets.pld.precast.WS['Savage Blade'] = set_combine(sets.pld.precast.WS, {
        ammo="Aurgelmir Orb",
        head="Flam. Zucchetto +2",
        body="Phorcys Korazin",
        hands="Sulev. Gauntlets +2",
        legs="Sulev. Cuisses +2",
        feet="Sulev. Leggings +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Ishvara Earring",
        left_ring="Karieyh Ring",
        right_ring="Rufescent Ring",
        back="Letalis Mantle",
        })
    sets.pld.precast.WS['Requiescat'] = set_combine(sets.pld.precast.WS, {
        
        })
    sets.pld.precast.WS['Chant du Cygne'] = set_combine(sets.pld.precast.WS, {
        
        })


    --------------------------------------
    -- Midcast sets
    --------------------------------------
    sets.pld.midcast = {}
    -- sets.pld.midcast['Enfeebling Magic']  = {}
    -- sets.pld.midcast['Enhancing Magic']  = {}
    -- sets.pld.midcast['Elemental Magic']  = {}
    sets.pld.midcast.Divine = {
        head={ name="Jumalik Helm", augments={'MND+10','"Mag.Atk.Bns."+15','Magic burst dmg.+10%','"Refresh"+1',}},
        body="Flamma Korazin +2",
        hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
        legs={ name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5',}},
        feet="Flam. Gambieras +2",
        neck="Stoicheion Medal",
        waist="Yamabuki-no-Obi",
        left_ear="Friomisi Earring",
        right_ear="Hecate's Earring",
        left_ring="Stikini Ring",
        right_ring="Stikini Ring",
        }
    sets.pld.midcast.Cure = {
        ammo="Quartz Tathlum +1",
        head="Sulevia's Mask +2",
        body="Sakpata's Plate",
        hands={ name="Eschite Gauntlets", augments={'Mag. Evasion+15','Spell interruption rate down +15%','Enmity+7',}},
        legs={ name="Souveran Diechlings", augments={'HP+80','Enmity+7','Potency of "Cure" effect received +10%',}},
        feet="Sakpata's Leggings",
        neck="Phalaina Locket",
        left_ear="Nourish. Earring +1",
        right_ear="Nourish. Earring",
        left_ring="Stikini Ring",
        right_ring="Naji's Loop",
        }
    
    sets.pld.midcast.Rampart = {}
    sets.pld.midcast.Phalanx = {}
    
    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------
    sets.pld.aftercast = {}
    sets.pld.aftercast.Idle = {}
    sets.pld.aftercast.Weapon = {}  
    
    -- gear_mode
    sets.pld.aftercast.Idle[0]={    --normal
        ammo="Aurgelmir Orb",
        head="Flam. Zucchetto +2",
        body="Flamma Korazin +2",
        hands="Sulev. Gauntlets +2",
        legs="Sulev. Cuisses +2",
        feet="Sulev. Leggings +2",
        neck="Asperity Necklace",
        waist={ name="Sailfi Belt +1", augments={'Path: A',}},
        left_ear="Brutal Earring",
        right_ear="Cessance Earring",
        left_ring="Rajas Ring",
        right_ring="Petrov Ring",
        back="Letalis Mantle",
        }
        sets.smn.precast = {}
        sets.smn.precast.JA = {}
        --sets.smn.precast.JA['ja'] = {}    
        sets.smn.precast['Astral Flow'] = {head={ name="Glyphic Horn +1", augments={'Enhances "Astral Flow" effect',}},}
        sets.smn.precast.Bloodpact = {
            main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
            sub="Vox Grip",
            ammo="Sancus Sachet +1",
            head="Beckoner's Horn +1",
            body="Baayami Robe",
            hands="Baayami Cuffs",
            legs="Baayami Slops",
            feet="Baayami Sabots",
            neck="Incanter's Torque",
            waist="Lucidity Sash",
            left_ear="Lodurr Earring",
            right_ear="Evans Earring",
            left_ring="Stikini Ring",
            right_ring="Evoker's Ring",
            back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+9','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},
            }
        sets.smn.precast.FC = {}
        sets.smn.precast.FCAvatar = {    
            main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: Mag. Acc.+26','Pet: "Mag.Atk.Bns."+29','DMG:+2',}},
            sub="Clerisy Strap",
            ammo="Sapience Orb",
            head={ name="Merlinic Hood", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Occult Acumen"+9','INT+6','"Mag.Atk.Bns."+4',}},
            body="Baayami Robe",
            hands="Repartie Gloves",
            legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
            feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
            right_ear="Malignance Earring",
            left_ear="Loquac. Earring",
            right_ring="Naji's Loop",
            left_ring="Kishar Ring",
        } 
        sets.smn.precast.AvatarsFavor = {head="Beckoner's Horn +1",}    
        sets.smn.precast['Elemental Siphon'] = {
            main="Chatoyant Staff",
            sub="Vox Grip",
            head="Baayami Hat",
            body="Baayami Robe",
            hands="Baayami Cuffs",
            legs="Baayami Slops",
            feet="Beck. Pigaches +1",
            neck="Incanter's Torque",
            waist="Ligeia Sash",
            left_ear="Smn. Earring",
            right_ear="Lodurr Earring",
            left_ring="Fervor Ring",
            right_ring="Evoker's Ring",
            back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+9','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},
            } 
    
            --------------------------------------
        -- Weaponskill sets
        --------------------------------------
        -- default set
        sets.smn.precast.WS = {}        
        sets.smn.precast.WS['Shattersoul'] = set_combine(sets.smn.precast.WS, {
            body="Count's Garb",
            hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
            legs="Telchine Braconi",
            feet="Beck. Pigaches +1",
            neck="Fotia Gorget",
            waist="Fotia Belt",
            left_ear="Ishvara Earring",
            right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
            right_ring="Apate Ring",
            })
        sets.smn.precast.WS['Myrkr'] = set_combine(sets.smn.precast.WS, {
            body="Count's Garb",
            hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
            legs="Telchine Braconi",
            feet="Beck. Pigaches +1",
            neck="Fotia Gorget",
            waist="Fotia Belt",
            left_ear="Ishvara Earring",
            right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
            right_ring="Apate Ring",
            })
        sets.smn.precast.WS['Garland of Bliss'] = set_combine(sets.smn.precast.WS, {
            head={ name="Helios Band", augments={'Pet: Attack+26 Pet: Rng.Atk.+26','Pet: "Dbl. Atk."+7','Blood Pact Dmg.+6',}},
            body="Count's Garb",
            hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
            legs="Telchine Braconi",
            feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+30','Mag. crit. hit dmg. +9%','INT+15','Mag. Acc.+15',}},
            neck="Fotia Gorget",
            waist="Fotia Belt",
            left_ear="Friomisi Earring",
            right_ear="Hecate's Earring",
            right_ring="Rajas Ring",
            })
    
        --------------------------------------
        -- Midcast sets
        --------------------------------------
        sets.smn.midcast = {}
        -- sets.smn.midcast['Enfeebling Magic']  = {}
        -- sets.smn.midcast['Enhancing Magic']  = {}
        -- sets.smn.midcast['Elemental Magic']  = {}
        sets.smn.midcast.BPPhysical = {
            main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Helios Band", augments={'Pet: Attack+26 Pet: Rng.Atk.+26','Pet: "Dbl. Atk."+7','Blood Pact Dmg.+6',}},
            body="Con. Doublet +3",
            hands={ name="Merlinic Dastanas", augments={'Pet: Attack+19 Pet: Rng.Atk.+19','Blood Pact Dmg.+10',}},
            legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
            neck={ name="Smn. Collar +1", augments={'Path: A',}},
            waist="Incarnation Sash",
            left_ear="Gelos Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20',}},
            }
        sets.smn.midcast.BPPMagical = {
            main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: Mag. Acc.+26','Pet: "Mag.Atk.Bns."+29','DMG:+2',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+17 Pet: "Mag.Atk.Bns."+17','Blood Pact Dmg.+7','Pet: DEX+7','Pet: "Mag.Atk.Bns."+14',}},
            legs={ name="Apogee Slacks", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            neck={ name="Smn. Collar +1", augments={'Path: A',}},
            waist="Regal Belt",
            left_ear="Gelos Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
            }
        sets.smn.midcast.BPHybrid = {
            main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: Mag. Acc.+26','Pet: "Mag.Atk.Bns."+29','DMG:+2',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+17 Pet: "Mag.Atk.Bns."+17','Blood Pact Dmg.+7','Pet: DEX+7','Pet: "Mag.Atk.Bns."+14',}},
            legs={ name="Apogee Slacks", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
            neck={ name="Smn. Collar +1", augments={'Path: A',}},
            waist="Regal Belt",
            left_ear="Gelos Earring",
            right_ear="Lugalbanda Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
            }
        sets.smn.midcast.Odin = {}
        sets.smn.midcast.Alexander = {
            head="Beckoner's Horn +1",
            body="Beck. Doublet +1",
            hands={ name="Glyphic Bracers +1", augments={'Inc. Sp. "Blood Pact" magic burst dmg.',}},
            legs="Beck. Spats +1",
            left_ear="Smn. Earring",
            left_ring="Fervor Ring",
            right_ring="Evoker's Ring",
            back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+9','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},
            }
        sets.smn.midcast.BPBurst = {
            main={ name="Grioavolr", augments={'Blood Pact Dmg.+8','Pet: Mag. Acc.+26','Pet: "Mag.Atk.Bns."+29','DMG:+2',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
            hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+17 Pet: "Mag.Atk.Bns."+17','Blood Pact Dmg.+7','Pet: DEX+7','Pet: "Mag.Atk.Bns."+14',}},
            legs={ name="Enticer's Pants", augments={'MP+15',}},
            feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: Attack+35','Blood Pact Dmg.+8',}},
            neck={ name="Smn. Collar +1", augments={'Path: A',}},
            waist="Caller's Sash",
            left_ear="Gelos Earring",
            right_ear="Kyrene's Earring",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
            }
        sets.smn.midcast.BPEnhancing = {
            main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
            sub="Vox Grip",
            head="Baayami Hat",
            body="Baayami Robe",
            hands="Baayami Cuffs",
            legs="Baayami Slops",
            feet="Baayami Sabots",
            neck="Incanter's Torque",
            waist="Lucidity Sash",
            left_ear="Smn. Earring",
            right_ear="Lodurr Earring",
            left_ring="Stikini Ring",
            right_ring="Evoker's Ring",
            back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+9','Blood Pact Dmg.+2','Blood Pact ab. del. II -2',}},
            }
        sets.smn.midcast.BPEnfeebling = {
            head={ name="Helios Band", augments={'Pet: Attack+26 Pet: Rng.Atk.+26','Pet: "Dbl. Atk."+7','Blood Pact Dmg.+6',}},
            body="Beck. Doublet +1",
            hands="Asteria Mitts +1",
            legs="Beck. Spats +1",
            feet="Beck. Pigaches +1",
            waist="Caller's Sash",
            left_ring="Varar Ring +1",
            right_ring="Varar Ring +1",
            back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
            }
    
        --------------------------------------
        -- Idle/resting/defense/etc sets
        --------------------------------------
        sets.smn.aftercast = {}
        sets.smn.aftercast.Idle = {}
        sets.smn.aftercast.Weapon = {}  
        
        -- gear_mode
        sets.smn.aftercast.Idle[0]={    -- refresh
            main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head="Beckoner's Horn +1",
            body={ name="Shomonjijoe +1", augments={'Path: A',}},
            hands="Asteria Mitts +1",
            legs={ name="Assid. Pants +1", augments={'Path: A',}},
            back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
            }
        sets.smn.aftercast.Idle[1]={    -- Perpetuation cost
            main={ name="Gridarvor", augments={'Pet: Accuracy+70','Pet: Attack+70','Pet: "Dbl. Atk."+15',}},
            sub="Elan Strap +1",
            ammo="Sancus Sachet +1",
            head="Beckoner's Horn +1",
            body={ name="Shomonjijoe +1", augments={'Path: A',}},
            hands="Asteria Mitts +1",
            legs={ name="Assid. Pants +1", augments={'Path: A',}},
            feet="Baayami Sabots",
            neck="Caller's Pendant",
            waist="Lucidity Sash",
            left_ear="Evans Earring",
            right_ear="Kyrene's Earring",
            left_ring="Bifrost Ring",
            right_ring="Evoker's Ring",
            back={ name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10','Pet: Haste+10','Pet: Damage taken -5%',}},
            }
    
        -- weapon_mode        
        sets.smn.aftercast.Weapon[0]={}       
        sets.smn.aftercast.Weapon[1]={}    
        sets.thf.precast = {}
        sets.thf.precast.JA = {}
        --sets.thf.precast.JA['ja'] = {}
        sets.thf.precast.FC = {}
        
        --------------------------------------
        -- Weaponskill sets
        --------------------------------------
        -- default set
        sets.thf.precast.WS = {
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
        sets.thf.precast.WS['Evisceration'] = set_combine(sets.thf.precast.WS, {})
        sets.thf.precast.WS['Exenterator'] = set_combine(sets.thf.precast.WS, {})
        
        --------------------------------------
        -- Midcast sets
        --------------------------------------
        sets.thf.midcast = {}
        -- sets.thf.midcast['Enfeebling Magic']  = {}
        -- sets.thf.midcast['Enhancing Magic']  = {}
        -- sets.thf.midcast['Elemental Magic']  = {}
        --sets.thf.midcast.magic = {}
        
        --------------------------------------
        -- Idle/resting/defense/etc sets
        --------------------------------------
        sets.thf.aftercast = {}
        sets.thf.aftercast.Idle = {}
        sets.thf.aftercast.Weapon = {}  
        
        -- gear_mode
        sets.thf.aftercast.Idle[0]={    --normal
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
        sets.thf.aftercast.Idle[1]={    --Treasure Hunter
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