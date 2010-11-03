/** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *	${TM_NEW_FILE_BASENAME}.as
 *	file description
 *	Copyright (c) ${TM_YEAR} ${TM_FULLNAME} Enterprise. All rights reserved.
 *
 *	@author	${TM_FULLNAME}
 *	@since	${TM_DATE}
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
package com.synapsegroup.syndeca.viewer.view.components.interfaces {
	import org.puremvc.as3.multicore.interfaces.INotification;
	import com.synapsegroup.syndeca.viewer.ApplicationFacade;
	import com.synapsegroup.syndeca.interfaces.IComponent;
	import com.synapsegroup.syndeca.viewer.view.components.interfaces.Component;
	/**
	 *	XML CONFIG:
	 *	@x - sets the x position coord (can be set as a percentage of its (parent as Component)'s width/height)
	 *	@y - sets the y position coord (can be set as a percentage of its (parent as Component)'s width/height)
	 *	@left - sets the x position of the left edge of this component (can be set by percentage)
	 *	@right - sets the x position of the right edge of this component (can be set by percentage)
	 *	@top - sets the y position of the top edge of this component (can be set by percentage)
	 *	@bottom - sets the y position of the bottom edge of this component (can be set by percentage)
	 *	@width - the width of this component (can be set as a percentage of its (parent as Component)'s width/height)
	 *	@height - the height of this component (can be set as a percentage of its (parent as Component)'s width/height)
	 *	@minX - the minimum x coord this component may reposition to
	 *	@minY - the minimum y coord this component may reposition to
	 *	@maxX - the maximum x coord this component may reposition to
	 *	@maxY - the maximum y coord this component may reposition to
	 *	@backgroundColor - the color of the background fill (defaults to no background fill)
	 *	@backgroundAlpha - the alpha of the background (this does nothing without background color)
	 *	@outlineColor - the color of the background fill's outline (defaults to none)
	 *	@outlineAlpha - the alpha of the background fill's outline (this does nothing without outline color)
	 *	@outlineThickness - the thickness of the background fill's outline (this does nothing without outline color)
	 *
	 *	@langversion ActionScript 3.0
	 *	@playerversion Flash 9.0
	 */
	public class ${TM_NEW_FILE_BASENAME} extends Component implements IComponent {
		/**
		 * @constructor
		 */
		public function ${TM_NEW_FILE_BASENAME}(config:XML = null) {
			super(config);
		}
		/**
		 *	Lists this components notification interests, which is the
		 *  concatenation of all this component's sub-component's interests
		 *	
		 *	@return Array the notifications this component is interested in
		 *	@author ${TM_FULLNAME}
		 *	@since  ${TM_DATE}
		 */
		override public function listNotificationInterests():Array {
			return super.listNotificationInterests().concat([
				// add notifications here
			]);
		}
		/**
		 *	Handles notifications from MVC
		 *
		 *	@param  INotification note
		 *	@author ${TM_FULLNAME}
		 *	@since  ${TM_DATE}
		 */
		override public function handleNotification(note:INotification):void {
			super.handleNotification(note);

			var name:String = note.getName();
			var body:Object = note.getBody();
			var type:String = note.getType();
			
			switch(name) {
					
				default:
			}
		}
		/**
		 *	Configures this component. Called after config xml is set.
		 *
		 *	@author ${TM_FULLNAME}
		 *	@since  ${TM_DATE}
		 */
		override public function configure():void {
			super.configure();
			// add stuff here
		}
	}
}
