#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface AVButton: UIButton
@end

@interface AVPlaybackControlsView: UIView
@property(readonly, nonatomic) AVButton *skipBackButton; // @synthesize skipBackButton=_skipBackButton;
@property(readonly, nonatomic) AVButton *skipForwardButton; // @synthesize skipForwardButton=_skipForwardButton;
@end

@interface AVPlayerController : UIViewController
@property(nonatomic, retain) AVPlayer *player;
@end

@interface AVPlaybackControlsController : NSObject
@property(assign, nonatomic) AVPlayerController *playerController;
@property(retain, nonatomic) AVPlaybackControlsView *playbackControlsView;
@end