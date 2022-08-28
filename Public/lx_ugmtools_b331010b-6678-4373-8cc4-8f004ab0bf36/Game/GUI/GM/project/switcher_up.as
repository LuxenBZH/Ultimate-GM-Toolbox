package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class switcher_up extends MovieClip
   {
       
      
      public var callback:Function;
      
      public function switcher_up(param1:String)
      {
         super();
         this.addEventListener(MouseEvent.ROLL_OVER,this.onOver);
         this.addEventListener(MouseEvent.ROLL_OUT,this.onOut);
         this.addEventListener(MouseEvent.MOUSE_DOWN,this.onDown);
      }
      
      public function onOver(param1:MouseEvent) : *
      {
         gotoAndStop(2);
      }
      
      public function onOut(param1:MouseEvent) : *
      {
         gotoAndStop(1,null);
      }
      
      public function onDown(param1:MouseEvent) : *
      {
         addEventListener(MouseEvent.MOUSE_UP,this.onUp);
         gotoAndStop(3);
      }
      
      public function onUp(param1:MouseEvent) : *
      {
         removeEventListener(MouseEvent.MOUSE_UP,this.onUp);
         gotoAndStop(1);
         this.callback();
      }
   }
}
