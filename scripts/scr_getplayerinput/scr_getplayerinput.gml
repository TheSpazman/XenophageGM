// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_GetPlayerInput(){
//////////////////////////////////////////////
// These are Keyboard checks. Two types here; Virtual-Keyboard and keyboard checks.
// These get player input.
//////////////////////////////////////////////

key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check (vk_right); 
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space); 
}