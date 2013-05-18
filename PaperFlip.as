package {
	import flash.display.*;
	import flash.events.*;

	public class PaperFlip extends Sprite {
		
		private var _View			:PaperFlipView;

		public function PaperFlip():void {

			this.remove_btn.addEventListener(MouseEvent.CLICK, onRemoveClick);
			
			_View = new PaperFlipView();
			_View.initialize({
							width:800,
							height:600
							});
			
			_View.render();
					
			//_View.startFreeLook();
			
			addChild(_View);
			
			var page:Page1 = new Page1();
			var pageb:Page1 = new Page1();
			var pagec:Page1 = new Page1();
			var paged:Page1 = new Page1();
			
			_View.addPage( {
						id:"page1",
						surface:page,
						orientation:PaperFlipView.VERTICAL,
						x:200,
						y:100,
						width:350,
						height:400,
						startCurl:180,
						startZRot:0,
						startXRot:0,
						startYRot:0,
						duration:1,
						delay:0
						});
			_View.addPage( {
						id:"page2",
						surface:pageb,
						orientation:PaperFlipView.HORIZONTAL,
						x:200,
						y:100,
						width:350,
						height:400,
						startCurl:180,
						startZRot:0,
						startXRot:00,
						startYRot:0,
						duration:1,
						delay:.5
						});
			_View.addPage( {
						id:"page3",
						surface:pagec,
						orientation:PaperFlipView.VERTICAL,
						x:200,
						y:100,
						width:350,
						height:400,
						startCurl:180,
						startZRot:0,
						startXRot:0,
						startYRot:0,
						duration:1,
						delay:1
						});
			_View.addPage( {
						id:"page4",
						surface:paged,
						orientation:PaperFlipView.HORIZONTAL,
						x:200,
						y:100,
						width:350,
						height:400,
						startCurl:180,
						startZRot:0,
						startXRot:0,
						startYRot:0,
						duration:1,
						delay:1.5
						});
		}
		
		
		protected function onRemoveClick(event:Event):void
		{
			//_View.tweenOutPageID("page4");
			_View.tweenOutAllPages("rip_down");
			//_View.destroy();
		}
		
	}
	
}