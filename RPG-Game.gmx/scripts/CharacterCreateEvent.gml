//f
stepCount = 0
encounterChance = 10

NONE = 0

playerLevel = 1
playerHPMax = 15
playerHPCurrent = playerHPMax
playerStrength = 8
playerSpeed = 6
playerDamage = playerStrength
playerDefense = 0

global.iventory = ds_grid_create(2,0)
global.equipment = ds_grid_create(1, 5)

global.pause = false



playerHead = NONE
playerWeapon = NONE
playerChest = NONE
playerGloves = NONE
playerLegs = NONE


placementX = 256
placementY = 256

playerDirection = 0

//Naming Defines


//Types
BRONZE = 0
IRON = 1
STEEL = 2
SILVER = 3
DIAMOND = 4

//Weapons
WEAPON = 0
//Armor
HEAD = 1
CHEST = 2
GLOVES = 3
LEGS = 4

//Weapons
bronze_sword = ds_map_create()
ds_map_add(bronze_sword, 'damage', 8)
ds_map_add(bronze_sword, 'name', 'Bronze Sword')
ds_map_add(bronze_sword, 'type', 'weapon')
ds_map_add(bronze_sword, 'cost', 100)


iron_sword = ds_map_create()
ds_map_add(iron_sword, 'damage', 12)
ds_map_add(iron_sword, 'name', 'Iron Sword')
ds_map_add(iron_sword, 'type', 'weapon')
ds_map_add(iron_sword, 'cost', 200)


steel_sword = ds_map_create()
ds_map_add(steel_sword, 'damage', 16)
ds_map_add(steel_sword, 'name', 'Steel Sword')
ds_map_add(steel_sword, 'type', 'weapon')
ds_map_add(steel_sword, 'cost', 100)

//Armor
bronze_helm = ds_map_create()
ds_map_add(bronze_helm, 'defense', 5)
ds_map_add(bronze_helm, 'type', 'armor')
ds_map_add(bronze_helm, 'name', 'Bronze Helmet')
ds_map_add(bronze_helm, 'cost', 100)

bronze_chest = ds_map_create()
ds_map_add(bronze_chest, 'defense', 8)
ds_map_add(bronze_chest, 'type', 'armor')
ds_map_add(bronze_chest, 'name', 'Bronze Chestplate')
ds_map_add(bronze_chest, 'cost', 100)

bronze_gloves = ds_map_create()
ds_map_add(bronze_gloves, 'defense', 5)
ds_map_add(bronze_gloves, 'name', 'Bronze Gauntlets')
ds_map_add(bronze_gloves, 'type', 'armor')
ds_map_add(bronze_gloves, 'cost', 100)

bronze_legs = ds_map_create()
ds_map_add(bronze_legs, 'defense', 5)
ds_map_add(bronze_legs, 'name', 'Bronze Legplates')
ds_map_add(bronze_legs, 'type', 'armor')
ds_map_add(bronze_legs, 'cost', 100)


ds_grid_set(global.equipment, 0, WEAPON, bronze_sword);
ds_grid_set(global.equipment, 0, HEAD, bronze_helm);
ds_grid_set(global.equipment, 0, CHEST, bronze_chest);
ds_grid_set(global.equipment, 0, GLOVES, bronze_gloves);
ds_grid_set(global.equipment, 0, LEGS, bronze_legs);


makeActive()
setCollisionBounds(-16,-16,16,16)
