package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;

class PlayState extends FlxState
{
	var text:FlxText;

	override public function create():Void
	{
		super.create();

		text = new FlxText(0, 0, 0, "Hello, World!", 32);
		text.font = AssetPaths.vcr__ttf;
		text.screenCenter();
		add(text);

		var instruction:FlxText = new FlxText(0, 0, 0, "Press ENTER to turn on/off antialiasing", 12);
		instruction.font = AssetPaths.vcr__ttf;
		instruction.screenCenter();
		instruction.y += instruction.height * 1.4;
		add(instruction);
	}

	override public function update(elapsed:Float):Void
	{
		if (FlxG.keys.justPressed.ENTER)
			text.antialiasing = !text.antialiasing;

		super.update(elapsed);
	}
}
