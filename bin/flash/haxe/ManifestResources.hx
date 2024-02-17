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

		data = '{"name":null,"assets":"aoy4:sizei150y4:typey5:IMAGEy9:classNamey33:__ASSET__data_graphics_meteor_pngy2:idy28:data%2Fgraphics%2Fmeteor.pnggoR0i319R1R2R3y34:__ASSET__data_graphics_meteor2_pngR5y29:data%2Fgraphics%2Fmeteor2.pnggoR0i2173R1R2R3y34:__ASSET__data_graphics_tilemap_pngR5y29:data%2Fgraphics%2Ftilemap.pnggoR0i6838R1y4:TEXTR3y35:__ASSET__data_how_to_add_assets_txtR5y34:data%2Fhow%20to%20add%20assets.txtgoR0i143966R1R2R3y22:__ASSET__data_icon_pngR5y15:data%2Ficon.pnggh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
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

@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_meteor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_meteor2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_graphics_tilemap_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_how_to_add_assets_txt extends flash.utils.ByteArray { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__data_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends flash.utils.ByteArray { }


#elseif (desktop || cpp)

@:keep @:image("data/graphics/meteor.png") @:noCompletion #if display private #end class __ASSET__data_graphics_meteor_png extends lime.graphics.Image {}
@:keep @:image("data/graphics/meteor2.png") @:noCompletion #if display private #end class __ASSET__data_graphics_meteor2_png extends lime.graphics.Image {}
@:keep @:image("data/graphics/tilemap.png") @:noCompletion #if display private #end class __ASSET__data_graphics_tilemap_png extends lime.graphics.Image {}
@:keep @:file("data/how to add assets.txt") @:noCompletion #if display private #end class __ASSET__data_how_to_add_assets_txt extends haxe.io.Bytes {}
@:keep @:image("data/icon.png") @:noCompletion #if display private #end class __ASSET__data_icon_png extends lime.graphics.Image {}
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