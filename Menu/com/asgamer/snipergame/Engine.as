﻿package com.asgamer.snipergame 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class Engine extends MovieClip
	{
		
		private var preloader:ThePreloader;
		
		public function Engine() 
		{
			preloader = new ThePreloader(474, this.loaderInfo);
			stage.addChild(preloader);
			preloader.addEventListener("loadComplete", loadAssets);
			preloader.addEventListener("preloaderFinished", showMenu);
		}
		
		private function loadAssets(e:Event) : void
		{
			this.play();
		}
		
		private function showSponsors(e:Event) : void
		{
			stage.removeChild(preloader);
			var ps:PrerollSponsors = new PrerollSponsors(stage);
			ps.addEventListener("prerollComplete", showMenu);
			ps.preroll();
		}
		
		private function showMenu(e:Event) : void
		{
			stage.removeChild(preloader);
			new MainMenu(stage).load();
		}
		
	}
	
}