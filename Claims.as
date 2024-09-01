package {
  import flash.display.Sprite;
  import flash.external.ExternalInterface;
  import flash.utils.Timer;

  public class Claims extends Sprite {
    public function Claims() {
      super();
      ExternalInterface.call("OnClaimAll");
      var timer:Timer = new Timer(50, 1);
      timer.addEventListener("timer", function() {
        ExternalInterface.call("OnRequestClose");
      });
      timer.start();
    }
  }
}
