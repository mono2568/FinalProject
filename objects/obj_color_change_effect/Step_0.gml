image_alpha -= 0.03;
image_xscale += 0.03;
image_yscale += 0.03;
if(image_alpha < 0.05){
	instance_destroy();
}
