//change the transparency of the effect
image_alpha -= 0.03;
// increase the scale
image_xscale += 0.03;
image_yscale += 0.03;
//destroy the effect when the transparency is below a certain value
if(image_alpha < 0.05){
	instance_destroy();
}
