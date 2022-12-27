// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_fuel_regen(){
player_jump_fuel = min(jump_fuel_max, player_jump_fuel + jump_fuel_regen_rate);

}