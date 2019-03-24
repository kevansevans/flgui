package flgui.components.binary;

import openfl.events.MouseEvent;

import flgui.components.ComponentBase;
import flgui.shapes.primative.Quadrilateral;

/**
 * ...
 * @author Kaelan
 */
class BinaryBase extends ComponentBase
{
	public var value(get, null):Bool;
	var outline:Quadrilateral;
	var back:Quadrilateral;
	var bswitch:Quadrilateral;
	public function new(_value:Bool = false) 
	{
		super();
		
		value = _value;
		
		back.addEventListener(MouseEvent.CLICK, mouseReleaseEvent);
	}
	public function set(_v:Bool) {
		value = _v;
		if (callOnChangeWhenSet && onChange != null) onChange();
	}
	function mouseReleaseEvent(e:MouseEvent):Void 
	{
		if (enabled) toggle();
	}
	function toggle() {
		value = !value;
	}
	function get_value():Bool {
		return value;
	}
}