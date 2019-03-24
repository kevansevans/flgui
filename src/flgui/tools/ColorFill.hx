package flgui.tools;

import openfl.display.BitmapData;
/**
 * ...
 * @author Kaelan
 */
abstract ColorFill(BitmapData)
{
	public static var BLACK:BitmapData = new BitmapData(32, 32, false, 0);
	public static var WHITE:BitmapData = new BitmapData(32, 32, false, 0xFFFFFF);
	public static var RED:BitmapData = new BitmapData(32, 32, false, 0xFF0000);
	public static var GREEN:BitmapData = new BitmapData(32, 32, false, 0x00FF00);
	public static var BLUE:BitmapData = new BitmapData(32, 32, false, 0x0000FF);
}