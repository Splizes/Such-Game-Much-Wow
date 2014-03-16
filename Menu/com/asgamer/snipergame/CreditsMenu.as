package com.asgamer.snipergame 
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.MouseEvent;
	
	public class CreditsMenu extends BaseMenu
	{
		
		public function CreditsMenu(stageRef:Stage = null ) 
		{
			this.stageRef = stageRef;
			btnReturn.addEventListener(MouseEvent.MOUSE_DOWN, returnMainMenu,  false, 0, true);
		}
		
		private function returnMainMenu(e:MouseEvent) : void
		{
			unload(new MainMenu(stageRef));
		}
		
	}
	
}