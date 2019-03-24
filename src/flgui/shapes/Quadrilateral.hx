package flgui.shapes;

import openfl.Vector;
import openfl.display.BitmapData;

import flgui.tools.ColorFill;

/**
 * ...
 * @author Kaelan
 * 
 * Because every other name for a square shape is taken god damn it
 */
class Quadrilateral extends ShapeBase
{
	
	public function new(_width:Float = 30, _height:Float = 30, ?_fill:BitmapData) 
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
	}
	override public function render() 
	{
		super.render();
		
		graphics.clear();
		graphics.beginBitmapFill(fill);
		graphics.drawTriangles(tris);
	}
	
}