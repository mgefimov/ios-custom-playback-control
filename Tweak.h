#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface AVPlayerController : UIViewController
@property(nonatomic, retain) AVPlayer *player;
@end

@interface AVPlaybackControlsController : NSObject
@property(assign, nonatomic) AVPlayerController *playerController;
@end