package
{
   import flash.display.MovieClip;
   
   public dynamic class toolbar_Holder extends MovieClip
   {
       
      
      public var toolbar_Array:Array;
      
      public var switchUp_mc:switcher_up;
      
      public var switchDown_mc:switcher_down;
      
      public var buttonsbg_mc:buttonsbg;
      
      public function toolbar_Holder()
      {
         this.toolbar_Array = new Array();
         super();
         this.switchUp_mc.callback = this.hideLastBar;
         this.switchDown_mc.callback = this.displayNextBar;
      }
      
      public function addButtonToBar(param1:int, param2:String) : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:int = 0;
         if(this.toolbar_Array.length < param1)
         {
            _loc3_ = new toolBar();
            this.toolbar_Array.push(_loc3_);
            this.addChild(_loc3_);
            this.toolbar_Array[param1 - 1].y = -5.4 + 64 * (param1 - 1) + 5 * (param1 - 1);
            if(param1 > 1)
            {
               this.reverseBar(param1 - 1);
               _loc3_.visible = false;
            }
         }
         this.toolbar_Array[param1 - 1].addButton(param2);
         if(param1 == 1)
         {
            this.toolbar_Array[0].rBorder_mc.visible = false;
            _loc4_ = this.toolbar_Array[0].buttonArray.length;
            this.switchUp_mc.x = this.toolbar_Array[0].buttonArray[_loc4_ - 1].x + 70;
            this.switchDown_mc.x = this.toolbar_Array[0].buttonArray[_loc4_ - 1].x + 70;
            this.buttonsbg_mc.x = this.toolbar_Array[0].buttonArray[_loc4_ - 1].x + 70;
            this.buttonsbg_mc.x = this.toolbar_Array[0].buttonArray[_loc4_ - 1].x + 64;
         }
      }
      
      public function displayNextBar() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < this.toolbar_Array.length + 1)
         {
            if(this.toolbar_Array[_loc1_].visible == false)
            {
               this.toolbar_Array[_loc1_].visible = true;
               break;
            }
            _loc1_++;
         }
      }
      
      public function hideLastBar() : void
      {
         var _loc1_:int = this.toolbar_Array.length - 1;
         while(_loc1_ > 0)
         {
            if(this.toolbar_Array[_loc1_].visible == true)
            {
               this.toolbar_Array[_loc1_].visible = false;
               break;
            }
            _loc1_--;
         }
      }
      
      public function reverseBar(param1:int) : void
      {
         this.toolbar_Array[param1].reverseButtons();
         var _loc2_:int = this.toolbar_Array[0].buttonArray.length;
         if(this.toolbar_Array[param1].reversed)
         {
            this.toolbar_Array[param1].x = this.toolbar_Array[0].buttonArray[_loc2_ - 1].x;
         }
         else
         {
            this.toolbar_Array[param1].x = 0;
         }
      }
   }
}
