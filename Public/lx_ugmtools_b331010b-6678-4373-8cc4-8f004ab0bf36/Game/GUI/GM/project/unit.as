package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   
   public dynamic class unit extends MovieClip
   {
       
      
      public var icon_mc:barIcon;
      
      public var highlight_mc:MovieClip;
      
      public var hit_mc:MovieClip;
      
      public var callName:String;
      
      public function unit(param1:String)
      {
         super();
         this.callName = param1;
         this.icon_mc.name = "iggy_" + param1;
         this.hit_mc.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.hit_mc.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
         this.hit_mc.addEventListener(MouseEvent.MOUSE_DOWN,this.onDown);
      }
      
      public function onOver(param1:MouseEvent) : *
      {
         this.highlight_mc.visible = true;
      }
      
      public function onOut(param1:MouseEvent) : *
      {
         this.highlight_mc.visible = false;
      }
      
      public function onDown(param1:MouseEvent) : *
      {
         addEventListener(MouseEvent.MOUSE_UP,this.onUp);
      }
      
      public function onUp(param1:MouseEvent) : *
      {
         removeEventListener(MouseEvent.MOUSE_UP,this.onUp);
         ExternalInterface.call("toolbar_" + this.callName);
      }
   }
}
