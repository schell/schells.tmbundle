//AS3///////////////////////////////////////////////////////////////////////////
// 
// Copyright 2009 
// 
////////////////////////////////////////////////////////////////////////////////

package
{
import flash.text.Font;
import flash.display.Sprite;

/**
 * This project is a stub for compiling fonts.
 * 
 * @langversion ActionScript 3.0
 * @playerversion Flash 9.0
 * 
 * @author schell
 * @since 03.12.2009
 */
public class FontCompiler${NEW_FONT_NAME} extends Sprite
{
	[Embed(systemFont="${SYSTEM_FONT_NAME}",
		fontName="${NEW_FONT_NAME}",
		fontStyle="${FONT_STYLE}",
		fontWeight="${FONT_WEIGHT}",
		${UNICODE_RANGE}
		mimeType="application/x-font")]		
	private static const ${NEW_FONT_NAME}:Class;
	/**
	 * @constructor
	 */
	public function FontCompiler${NEW_FONT_NAME}()
	{
		super();
		Font.registerFont(${NEW_FONT_NAME});
		var fontClassInstance:Font = new ${NEW_FONT_NAME}() as Font;
		
		// here we're going to print out all the registered fonts...
		var fonts:Array = Font.enumerateFonts();		
		trace("FontCompiler_${NEW_FONT_NAME}::FontCompiler_${NEW_FONT_NAME}() registered:",fontClassInstance.fontName,"currently registered fonts:");
		for(var i:int = 0; i < fonts.length; i++)
		{
			var font:Font = fonts[i];
			trace("	font:",font.fontName,"style:",font.fontStyle);
		}
	}
	
}

}
