function setup()
{
	createCanvas(750, 600);
    background(224,255,255); 
    strokeWeight(0);
}

function draw()
{
line(mouseX,mouseY,pmouseX,pmouseY);
}

function mousePressed()
{
strokeWeight(5);
}

function mouseReleased()
{
strokeWeight(0);
}
