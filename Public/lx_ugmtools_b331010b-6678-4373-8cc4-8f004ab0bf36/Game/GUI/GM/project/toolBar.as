package
{
   import flash.display.MovieClip;
   
   public dynamic class toolBar extends MovieClip
   {
       
      
      public var buttonArray:Array;
      
      public var lBorder_mc:leftBorder;
      
      public var rBorder_mc:rightBorder;
      
      public var reversed:Boolean = false;
      
      public function toolBar()
      {
         this.buttonArray = new Array();
         super();
      }
      
      public function moveButtons() : *
      {
         var _loc1_:int = 0;
         var _loc2_:int = 56;
         if(this.reversed)
         {
            _loc2_ = -_loc2_;
         }
         _loc1_ = 0;
         while(_loc1_ < this.buttonArray.length)
         {
            this.buttonArray[_loc1_].x = _loc2_ * _loc1_;
            _loc1_++;
         }
         var _loc3_:int = this.buttonArray.length;
         if(this.reversed)
         {
            this.rBorder_mc.x = 40.55;
            this.lBorder_mc.x = _loc2_ * (_loc3_ - 1) + 4;
         }
         else
         {
            this.rBorder_mc.x = 40.55 + _loc2_ * (_loc3_ - 1);
            this.lBorder_mc.x = 4;
         }
      }
      
      public function addButton(param1:String) : *
      {
         var _loc2_:* = new unit(param1);
         this.buttonArray.push(_loc2_);
         this.addChild(_loc2_);
         this.moveButtons();
      }
      
      public function reverseButtons() : *
      {
         if(!this.reversed)
         {
            this.reversed = true;
         }
         else
         {
            this.reversed = false;
         }
         this.moveButtons();
      }
   }
}
