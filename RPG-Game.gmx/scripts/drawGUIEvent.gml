draw_sprite(sInfoBox, 0, 128, 64);

var weapon_map = ds_grid_get(global.equipment, 0, WEAPON)

draw_text(32, 20, "Damage: " + string(playerDamage));
draw_text(32, 30, "Defense: " + string(playerDefense));
draw_text(32, 40, "Health: " + string(playerHPCurrent));
draw_text(32, 50, "Weapon: " + string(weapon_map[? 'name']));


