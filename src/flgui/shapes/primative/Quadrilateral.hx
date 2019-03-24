package flgui.shapes.primative;

import openfl.Vector;

import openfl.display.BitmapData;
import openfl.display.Shape;

import flgui.tools.ColorFill;

import openfl.display.Bitmap;
import openfl.display.BitmapData;

/**
 * ...
 * @author Kaelan
 * 
 * Because every other name for a square shape is taken god damn it
 */
class Quadrilateral extends ShapeBase
{
	
	public function new(_width:Float = 30, _height:Float = 30, _interactive:Bool = true, ?_fill:BitmapData) 
	{
		super();
		
		if (_fill == null) fill = ColorFill.WHITE;
		else fill = _fill;
		
		var tempArray:Array<Float> = new Array();
		
		tempArray.push(0);
		tempArray.push(0);
		
		tempArray.push(0);
		tempArray.push(_height);
		
		tempArray.push(_width);
		tempArray.push(_height);
		
		tempArray.push(0);
		tempArray.push(0);
		
		tempArray.push(_width);
		tempArray.push(0);
		
		tempArray.push(_width);
		tempArray.push(_height);
		
		tris = new Vector(tempArray.length, true, tempArray);
		
		render();
		
		mouseEnabled = false;
		
		if (_interactive) {
			hitbox = new Bitmap(new BitmapData(Std.int(_width), Std.int(_height), true, 0));
			mouseEnabled = true;
			addChild(hitbox);
		}
	}
}