if global.money >= 100 and !purchased{
	global.max_alert += 50;
	purchased = true;
	global.upgrades[index] = purchased;
	image_index = 1;
	global.money -= 100;

}
