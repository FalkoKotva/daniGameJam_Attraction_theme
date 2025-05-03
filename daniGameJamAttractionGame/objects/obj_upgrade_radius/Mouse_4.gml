if global.money >= price and !purchased{
	global.attract_radius -= 100;
	image_index = 1;
	global.money -= 100;
	price += 100;
	global.number_of_use[index] -=1;
	
	if(global.number_of_use[index] == 0){
		purchased = true;
		global.upgrades[index] = purchased;
	}
}
