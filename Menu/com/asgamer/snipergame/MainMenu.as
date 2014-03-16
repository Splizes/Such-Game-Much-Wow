package com.asgamer.snipergame 
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.MouseEvent;
	
	public class MainMenu extends BaseMenu
	{
		
		public function MainMenu(stageRef:Stage = null ) 
		{
			this.stageRef = stageRef;
			btnPlay.addEventListener(MouseEvent.MOUSE_DOWN, playGame, false, 0, true);
			btnCredits.addEventListener(MouseEvent.MOUSE_DOWN, credits,  false, 0, true);
		}
		
		private function playGame(e:MouseEvent) : void
		{
			
		}
		
		private function credits(e:MouseEvent) : void
		{
			unload(new CreditsMenu(stageRef));
		}
		
	}
	
}