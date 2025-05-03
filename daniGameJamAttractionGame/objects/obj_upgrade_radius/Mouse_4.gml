if global.money >= 100 and !purchased{
	global.attract_radius -= 100;
	purchased = true;
	global.upgrades[index] = purchased;
	image_index = 1;
	global.money -= 100;
}
