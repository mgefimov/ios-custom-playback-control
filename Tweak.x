#import "Tweak.h"

%hook AVPlaybackControlsController
-(void)skipButtonTouchUpInside:(id)arg1 {
	[self.playerController.player pause];
}
%end