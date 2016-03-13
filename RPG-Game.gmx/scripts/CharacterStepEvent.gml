//f
if global.pause
{
    if keyboard_check(ord('A'))
    {
        global.pause = false
    } else if keyboard_check(ord('S'))
    {
        global.pause = false
    }
    exit
}
keyRightPressed = keyboard_check(vk_right)
keyLeftPressed = keyboard_check(vk_left)
keyUpPressed = keyboard_check(vk_up)
keyDownPressed = keyboard_check(vk_down)


var weapon_map = ds_grid_get(global.equipment, 0, WEAPON)
playerDamage = playerStrength + weapon_map[? 'damage']


var head_map = ds_grid_get(global.equipment, 0, HEAD)
var chest_map = ds_grid_get(global.equipment, 0, CHEST)
var gloves_map = ds_grid_get(global.equipment, 0, GLOVES)
var legs_map = ds_grid_get(global.equipment, 0, LEGS)

playerDefense = head_map[? 'defense'] + chest_map[? 'defense'] + gloves_map[? 'defense'] + legs_map[? 'defense']

if keyRightPressed and !keyLeftPressed
{
    xVel = 5;
    direction = 0
}
else if keyLeftPressed and !keyRightPressed
{
    xVel = -5;
    direction = 180
}
else xVel = 0;

if keyUpPressed and !keyDownPressed
{
    yVel = -5;
    direction = 90
}
else if keyDownPressed and !keyUpPressed
{
    yVel = 5;
    direction = 270
}
else yVel = 0;

if isCollisionWarp()
{
    inst = instance_nearest(x,y, oWarp)
    placementX = inst.target_x
    placementY = inst.target_y
    room_goto(inst.destination)
}
if xVel != 0 or yVel != 0
{
    if room = room_WorldMap
    {
        if stepCount mod 5 == 0
        {
            var encounter = random(100)
            
            if encounter > encounterChance
                initiateEncounter(oGameGenie.enemy_brigand)
        }
    
    }
}


if room = room_WorldMap
{
    sprite_index = sCharacterMap
} else sprite_index = sCharacter

image_angle = direction
moveTo(xVel, yVel)
stepCount++
