package flgui.components.binary;

import haxe.PosInfos;

import flgui.tools.ColorFill;
import flgui.shapes.primative.Quadrilateral;

/**
 * ...
 * @author Kaelan
 */
class CheckBox extends BinaryBase
{
	public function new(_value:Bool = false) 
	{
		outline = new Quadrilateral(17, 17, false, ColorFill.BLACK);
		outline.x = (17 / 2) * -1;
		outline.y = (17 / 2) * -1;
		
		back = new Quadrilateral(15, 15, true);
		back.x = (15 / 2) * -1;
		back.y = (15 / 2) * -1;
		back.buttonMode = true;
		
		bswitch = new Quadrilateral(13, 13, false, ColorFill.GREEN);
		bswitch.x = (13 / 2) * -1;
		bswitch.y = (13 / 2) * -1;
		bswitch.mouseEnabled = false;
		
		super(_value);
		
		addChild(outline);
		addChild(back);
		if (_value) addChild(bswitch);
	}
	override function toggle() 
	{
		if (!enabled) return;
		
		super.toggle();
		
		if (!value) removeChild(bswitch);
		else if (value) addChild(bswitch);
		
		callOnChange();
	}
}