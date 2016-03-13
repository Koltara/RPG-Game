enemy = argument0
global.pause = true

enemyInstanceHealth = enemy[? 'health']
enemyInstanceDamage = enemy[? 'damage']
enemyInstanceSpeed = enemy[? 'speed']
enemyInstanceDefense = enemy[? 'defense']
enemyInstanceExperienceYield = enemy[? 'experience']
enemyInstanceName = enemy[? 'name']

playerInstanceHealth = oCharacter.playerHPCurrent
playerInstanceDamage = oCharacter.playerDamage
playerInstanceSpeed = oCharacter.playerSpeed
playerInstanceDefense = oCharacter.playerDefense

while (enemyInstanceHealth > 0)
{
    if keyboard_check(ord('A'))
    {
        if playerInstanceSpeed > enemyInstanceSpeed
        {
            var playerNetDamage = playerInstanceDamage - enemyInstanceDefense
            var enemyNetDamage = enemyInstanceDamage - playerInstanceDefense
            
            if playerNetDamage > 0
                enemyInstanceHealth -= playerNetDamage
            
            if enemyNetDamage > 0
                playerInstanceHealth -= enemyNetDamage
                
            if playerInstanceHealth <= 0
                game_restart()
        } else
        {
            var playerNetDamage = playerInstanceDamage - enemyInstanceDefense
            var enemyNetDamage = enemyInstanceDamage - playerInstanceDefense
            
            
            if enemyNetDamage > 0
                playerInstanceHealth -= enemyNetDamage  
                
            if playerInstanceHealth <= 0
                game_restart()
                
            if playerNetDamage > 0
                enemyInstanceHealth -= playerNetDamage
        }
    }
    if keyboard_check(ord('S'))
    {
        global.pause = false
        exit
    }
}

