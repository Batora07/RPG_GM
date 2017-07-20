///deal_damage(attacker, defender, critical, modifier)
var attacker = argument0.stats_object;
var defender =  argument1.stats_object;
var critical = argument2;
var modifier = argument3;

var attack = attacker.stats[? "attack"];
var defense = defender.stats[? "defense"];
var defending_unit = argument1;

if (instance_exists(defender) && instance_exists(attacker)){
    var damage = (attack+(attacker.level+3)+(1-defense*.05))*.5;
    
    var total_damage = (damage+(critical*damage*(attacker.stats[? "critical"]/100)));
    total_damage *= modifier;
    
    // Deal the damage
    defender.stats[? "health"] -= total_damage; 
}
