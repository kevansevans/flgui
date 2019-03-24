package flgui.shapes;

import openfl.display.BitmapData;
import openfl.display.Bitmap;
import openfl.display.Shape;
import openfl.display.Sprite;
import openfl.Vector;

/**
 * ...
 * @author Kaelan
 */
class ShapeBase extends Sprite
{
	var tris:Vector<Float>;
	var fill:BitmapData;
	var hitbox:Bitmap;
	public function new() 
	{
		super();
	}
	public function render() {
		graphics.clear();
		graphics.beginBitmapFill(fill);
		graphics.drawTriangles(tris);
	}
}