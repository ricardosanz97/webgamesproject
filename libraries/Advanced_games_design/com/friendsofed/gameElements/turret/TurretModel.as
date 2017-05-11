﻿package com.friendsofed.gameElements.turret{	import flash.events.Event;	import flash.events.EventDispatcher;	import com.friendsofed.gameElements.primitives.*;	public class TurretModel extends AVerletModel	{	  //The angle of the turret is stored 	  //in AVerletModel's angle property	  public var constrainLeft:int = 0;	  public var constrainRight:int = 0;	  private var _fireBullet:Boolean = false;	  public var turretIsActive:Boolean = true;	    		public function TurretModel		  (		    width:uint = 30, 		    height:uint = 30, 		    color:uint = 0x999999,		    constrainLeft:int = 0,		    constrainRight:int = 0		  ):void 		{		  this.width = width;		  this.height = height;		  this.color = color;		  this.constrainLeft = constrainLeft;		  this.constrainRight = constrainRight;		}		public function get fireBullet():Boolean	  {	    return _fireBullet;	  }	  public function set fireBullet(value:Boolean):void	  {	    _fireBullet = value;	    dispatchEvent(new Event(Event.CHANGE));	  }	}}