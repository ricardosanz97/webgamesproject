﻿package com.friendsofed.gameElements.primitives{	import flash.display.Shape;	import flash.filters.*;	public class TriangleView extends AVerletView	{		public function TriangleView(model:TriangleModel):void		{		  super(model);		}		override protected function draw():void		{		  var shape:Shape = new Shape();		  shape.graphics.lineStyle(1);		  //Right facing triangle		  if(model.inclination == "right")		  {			  shape.graphics.beginFill(0x929292);			  shape.graphics.moveTo(0, 0);			  shape.graphics.lineTo(0, model.height);			  shape.graphics.lineTo(model.width, model.height);			  shape.graphics.lineTo(0, 0);			  shape.graphics.endFill();		  }		  else		  //Left facing triangle		  {		    shape.graphics.beginFill(0x929292);			  shape.graphics.moveTo(model.width, 0);			  shape.graphics.lineTo(0, model.height);			  shape.graphics.lineTo(model.width, model.height);			  shape.graphics.moveTo(model.width, 0);			  shape.graphics.endFill();		  }						addChild(shape);						//Center the shape			shape.x -= model.width / 2;			shape.y -= model.height / 2;		}	}}