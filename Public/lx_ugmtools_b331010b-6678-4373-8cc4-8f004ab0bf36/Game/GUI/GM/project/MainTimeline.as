package
{
   import flash.display.MovieClip;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public var events:Array;
      
      public var anchorId:String = "ugmt_toolbar";
      
      public var alignment:String = "none";
      
      public var layout:String = "fillVFit";
      
      public var anchorPos:String = "topleft";
      
      public var anchorTPos:String = "topleft";
      
      public var anchorTarget:String = "screen";
      
      public var uiScaling:Number = 1;
      
      public var screenWidth:Number = 0;
      
      public var screenHeight:Number = 0;
      
      public const designResolution:Point = new Point(1920,1080);
      
      public var curTooltip:String = "";
      
      public var hasTooltip:Boolean = false;
      
      public var filler_mc:filler;
      
      public var toolbarHolder_mc:toolbar_Holder;
      
      public function MainTimeline()
      {
         super();
         this.events = new Array();
      }
      
      public function onEventInit() : void
      {
         ExternalInterface.call("registeranchorId",this.anchorId);
         ExternalInterface.call("setAnchor",this.anchorPos,this.anchorTarget,this.anchorTPos);
      }
      
      public function onEventResize() : void
      {
         ExternalInterface.call("setPosition",this.anchorPos,this.anchorTarget,this.anchorPos);
      }
      
      public function onEventResolution(param1:Number, param2:Number) : void
      {
         if(this.screenWidth != param1 || this.screenHeight != param2)
         {
            ExternalInterface.call("setPosition",this.anchorPos,this.anchorTarget,this.anchorPos);
            this.screenWidth = param1;
            this.screenHeight = param2;
            this.uiScaling = param2 / this.designResolution.y;
         }
      }
      
      public function onEventUp(param1:Number) : Boolean
      {
         return false;
      }
      
      public function onEventDown(param1:Number) : Boolean
      {
         return false;
      }
   }
}
