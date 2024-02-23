package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		
		#end

		var data, manifest, library, bundle;

		data = '{"name":null,"assets":"aoy4:pathy27:data%2Fgraphics%2Fearth.pngy4:sizei56346y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y28:data%2Fgraphics%2Fmeteor.pngR2i150R3R4R5R7R6tgoR0y29:data%2Fgraphics%2Fmeteor2.pngR2i319R3R4R5R8R6tgoR0y33:data%2Fgraphics%2Fright_arrow.pngR2i101R3R4R5R9R6tgoR0y29:data%2Fgraphics%2Ftilemap.pngR2i2173R3R4R5R10R6tgoR0y30:data%2Fgraphics%2Fup_arrow.pngR2i118R3R4R5R11R6tgoR0y34:data%2Fhow%20to%20add%20assets.txtR2i6838R3y4:TEXTR5R12R6tgoR0y15:data%2Ficon.pngR2i143966R3R4R5R14R6tgoR2i98788R3y5:SOUNDR5y26:data%2Fsounds%2Fselect.wavy9:pathGroupaR16hR6tgoR2i576078R3R15R5y30:data%2Fsounds%2Ftitle_song.wavR17aR18hR6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_earth_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_meteor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_meteor2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_right_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_tilemap_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_up_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_how_to_add_assets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_sounds_select_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_sounds_title_song_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("data/graphics/earth.png") @:noCompletion #if display private #end class __ASSET__data_graphics_earth_png extends lime.graphics.Image {}
@:keep @:image("data/graphics/meteor.png") @:noCompletion #if display private #end class __ASSET__data_graphics_meteor_png extends lime.graphics.Image {}
@:keep @:image("data/graphics/meteor2.png") @:noCompletion #if display private #end class __ASSET__data_graphics_meteor2_png extends lime.graphics.Image {}
@:keep @:image("data/graphics/right_arrow.png") @:noCompletion #if display private #end class __ASSET__data_graphics_right_arrow_png extends lime.graphics.Image {}
@:keep @:image("data/graphics/tilemap.png") @:noCompletion #if display private #end class __ASSET__data_graphics_tilemap_png extends lime.graphics.Image {}
@:keep @:image("data/graphics/up_arrow.png") @:noCompletion #if display private #end class __ASSET__data_graphics_up_arrow_png extends lime.graphics.Image {}
@:keep @:file("data/how to add assets.txt") @:noCompletion #if display private #end class __ASSET__data_how_to_add_assets_txt extends haxe.io.Bytes {}
@:keep @:image("data/icon.png") @:noCompletion #if display private #end class __ASSET__data_icon_png extends lime.graphics.Image {}
@:keep @:file("data/sounds/select.wav") @:noCompletion #if display private #end class __ASSET__data_sounds_select_wav extends haxe.io.Bytes {}
@:keep @:file("data/sounds/title_song.wav") @:noCompletion #if display private #end class __ASSET__data_sounds_title_song_wav extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)

#if html5

#else

#end

#end
#end

#end