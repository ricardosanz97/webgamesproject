﻿package com.friendsofed.gameElements.primitives{	import flash.display.*;	import flash.events.Event;  //ABSTRACT CLASS - Do not instantiate	public class AVerletView extends Sprite	{	  private var _shape:Shape;				//Variable that refers to the model.		//Note that it's "protected"		//so that it can be accessed by other classes 		//in this same package, but not outside it		protected var model:Object;		public function AVerletView(verletModel:AVerletModel):void		{			model = verletModel;			model.addEventListener(Event.CHANGE, changeHandler);			addEventListener(Event.ADDED_TO_STAGE, addedToStagHandler);		}				private function addedToStagHandler(event:Event):void		{			  //Draw the object			draw();						//Position object			this.x = model.xPos;			this.y = model.yPos;						//Add listeners			addEventListener			  (Event.REMOVED_FROM_STAGE, removedFromStageHandler);		}				private function removedFromStageHandler(event:Event):void		{		  removeEventListener		    (Event.ADDED_TO_STAGE, addedToStagHandler);			removeEventListener			  (Event.REMOVED_FROM_STAGE, removedFromStageHandler);		}				//The draw method is also protected		protected function draw():void		{		}				protected function changeHandler(event:Event):void		{			this.x = model.xPos;			this.y = model.yPos;						//If any of your objects use rotation, add this line:			this.rotation = model.angle;						//If any of your objects depend on visiblity, use this:			this.visible = model.visible;		}	}}