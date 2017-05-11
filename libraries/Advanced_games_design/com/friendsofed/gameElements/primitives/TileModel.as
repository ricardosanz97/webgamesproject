﻿package com.friendsofed.gameElements.primitives{	import flash.events.Event;	import flash.events.EventDispatcher;	import flash.display.*;	public class TileModel extends AVerletModel	{	  public var tileSheetRow:uint;	  public var tileSheetColumn:uint;    private var _mapRow:uint;    private var _mapColumn:uint;    private var _currentTile:uint;    private var _maxTileSize:uint;        //Optional properties for platform    //game characters    public var jumping:Boolean = false;    public var coordinateSpace:DisplayObject;        //Optional property for maze game characters    //(This is only used in chapter 9)    public var direction:String = "";    		public function TileModel		  (		    maxTileSize:uint = 64,		    tileSheetColumn:uint = 0,		    tileSheetRow:uint = 0,		    mapRow:uint = 0, 		    mapColumn:uint = 0, 		    width:uint = 0, 		    height:uint = 0,		    setX:Number = 0		  ):void 		{		  this._maxTileSize = maxTileSize;		  this.tileSheetColumn = tileSheetColumn;		  this.tileSheetRow = tileSheetRow;		  this._mapRow = mapRow;		  this._mapColumn = mapColumn;		  this.width = width;		  this.height = height;		  this.setX = mapColumn * maxTileSize;		  this.setY = mapRow * maxTileSize;		}				//Rows and column that the object occupies		public function get mapColumn():uint		{		   _mapColumn = uint((xPos + width * 0.5) / _maxTileSize);		   return _mapColumn;		}		public function set mapColumn(value:uint):void		{		   _mapColumn = value;		}		public function get mapRow():uint		{		   _mapRow = uint((yPos + height * 0.5) / _maxTileSize);		   return _mapRow;		}		public function set mapRow(value:uint):void		{		   _mapRow = value;		}		//Quick access to the tile's ID number if you need it		public function get id():uint		{		  var id:uint = tileSheetColumn * 10 + tileSheetRow;		  return id;	  }		//Top, bottom, left and right sides		public function get top():uint		{		   var top:uint = uint(yPos / _maxTileSize);		   return top;		}		public function get bottom():uint		{		   var bottom:uint = uint((yPos + height) / _maxTileSize);		   return bottom;		}		public function get left():uint		{		   var left:uint = uint(xPos / _maxTileSize);		   return left;		}		public function get right():uint		{		   var right:uint = uint((xPos + width) / _maxTileSize);		   return right;		}		public function get centerX():uint		{		   var centerX:uint = uint((xPos + width * 0.5) / _maxTileSize);		   return centerX;		}		public function get centerY():uint		{		   var centerY:uint = uint((yPos + height * 0.5) / _maxTileSize);		   return centerY;		}	}}