#import "Tweak.h"

%hook AVPlaybackControlsController
-(void)skipButtonTouchUpInside:(AVButton *)btn {
    AVPlayer * player = self.playerController.player;
    CMTime seekTime;
    if (btn == self.playbackControlsView.skipBackButton) {
        seekTime = CMTimeMakeWithSeconds(-5, 1);
    } else {
        seekTime = CMTimeMakeWithSeconds(5, 1);
    }
    CMTime targetTime = CMTimeAdd(player.currentTime, seekTime);

    [player seekToTime:targetTime];
}
%end