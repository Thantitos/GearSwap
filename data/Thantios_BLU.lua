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
	
	
	--sets.relic = {}
    --sets.relic.head = "Agoge Mask +3"            Yes
	--sets.relic.body = "Agoge Lorica +3"           
	--sets.relic.hands = "Agoge Mufflers +3"       
	--sets.relic.legs = "Agoge Cuisses +3"         Yes
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
    --sets.precast.JA['ja'] = {}
    sets.precast.FC = {}

    --------------------------------------
    -- Weaponskill sets
    --------------------------------------
    -- default set
    sets.precast.WS = {}   
    sets.precast.WSStrength = {
        ammo="Oshasha's Treatise",
        head="Nyame Helm",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        legs="Nymae Flanchard",
        feet="Sulev. Leggings +2",
        neck="War. Beads +2",
        waist="Sailfi Belt +1",
        left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
        right_ear="Thrud Earring",
        left_ring="Rajas Ring",
        right_ring="Karieyh Ring",
        back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
    --WSD, PDL if ATK-Capped
    sets.precast.WSSingle = {}   
    --PDL and Multi
    sets.precast.WSMulti = {}  
    --sets.precast.WS['ws'] = set_combine(sets.precast.WSSingle, {})

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
    sets.aftercast.Idle[0]={}
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
    4if sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    -- Fast Cast for Magic    
    elseif spell.action_type == 'Magic' then
            equip(sets.precast.FC)
    end
end

function midcast(spell)  
    if string.find(spell.english,'part of the name') then 
        equip(sets.midcast.magic)
    elseif spell.english == 'exact name' then
        equip(sets.midcast.magic)
    -- elseif spell.skill == 'Enfeebling Magic' then
    --     equip(sets.midcast['Enfeebling Magic'])
    -- elseif spell.skill == 'Enhancing Magic' then
    --     equip(sets.midcast['Enhancing Magic'])
    -- elseif spell.skill == 'Elemental Magic' then
    --     equip(sets.midcast['Elemental Magic'])
    elseif spell.skill then
        equip(sets.aftercast.Idle)
    end
end

function buff_change(name, gain, buff_details)
    -- if name == '<buffname>'
    -- then
    --     if gain
    --     then
    --         weapon_mode = 3
    --     else 
    --         weapon_mode = 1
    --     end
    --     equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
    --     switch_crossbar(weapon_mode)
    -- end
end

function aftercast(spell)
    equip(set_combine(sets.aftercast.Idle[gear_mode],sets.aftercast.Weapon[weapon_mode]))	
	switch_crossbar(weapon_mode)
end

-------------------------------------------------------------------------------------------------------------------
-- Stances
-------------------------------------------------------------------------------------------------------------------
function self_command(command)
    if command:lower() == 'switchgear' then gear_mode = (gear_mode+1)%1 end
    if command:lower() == 'gear1' then gear_mode = 0 end
    if command:lower() == 'gear2' then gear_mode = 1 end
    if command:lower() == 'gear3' then gear_mode = 2 end
    if command:lower() == 'gear4' then gear_mode = 3 end
    equip(sets.aftercast.Idle[gear_mode])

    if command:lower() == 'switchweapon' then weapon_mode = (weapon_mode+1)%1 end
    if command:lower() == 'weapon1' then weapon_mode = 0 end
    if command:lower() == 'weapon2' then weapon_mode = 1 end
    if command:lower() == 'weapon3' then weapon_mode = 2 end
    if command:lower() == 'weapon4' then weapon_mode = 3 end
    equip(sets.aftercast.Weapon[weapon_mode])
	switch_crossbar(weapon_mode)	    
    
end

