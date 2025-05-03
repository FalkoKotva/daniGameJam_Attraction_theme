if global.money >= price and !purchased{
	global.max_alert += 50;
	
	global.number_of_use[index] -= 1;
	image_index = 1;
	
	global.money -= 100;
	price += 100;
	
	if(global.number_of_use[index] == 0){
		purchased = true;
		global.upgrades[index] = purchased;
	}

}
