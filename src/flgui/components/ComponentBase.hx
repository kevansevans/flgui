package flgui.components;

import openfl.utils.Function;

#if flash
import openfl.display.Sprite;
#else
import openfl.display.DisplayObjectContainer;
#end

/**
 * ...
 * @author Kaelan
 */
#if flash
class ComponentBase extends Sprite
#else
class ComponentBase extends DisplayObjectContainer
#end
{
	public var enabled(default, set):Bool = true;
	public var callOnChangeWhenSet:Bool = true;
	public var onChange:Void -> Void;
	public function new() 
	{
		super();
	}
	function set_enabled(_v:Bool) {
		if (!_v) {
			alpha = 0.5;
			mouseEnabled = false;
			mouseChildren = false;
		} else if (_v) {
			alpha = 1;
			mouseEnabled = true;
			mouseChildren = true;
		}
		enabled_update(_v);
		return enabled = _v;
	}
	function enabled_update(_v:Bool) {
		
	}
	function callOnChange() {
		if (onChange == null) return;
		else onChange();
	}
}