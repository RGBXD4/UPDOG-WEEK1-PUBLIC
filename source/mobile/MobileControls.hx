package mobile;

import flixel.FlxG;
import flixel.group.FlxSpriteGroup;
import flixel.math.FlxPoint;
import flixel.util.FlxDestroyUtil;
import mobile.flixel.Hitbox;

/**
 * @author Mihai Alexandru (M.A. Jigsaw)
 */
class MobileControls extends FlxSpriteGroup
{

	public var hitbox:Hitbox;

	public function new()
	{
		super();

				hitbox = new Hitbox();
				add(hitbox);
	}

	override public function destroy():Void
	{
		super.destroy();

		if (hitbox != null)
			hitbox = FlxDestroyUtil.destroy(hitbox);
	}
}
