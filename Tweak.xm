@interface CSCoverSheetViewController : UIViewController
@property (assign,getter=isAuthenticated,nonatomic) BOOL authenticated;
@end

@interface SBLockScreenManager : NSObject
@property (nonatomic,readonly) CSCoverSheetViewController * coverSheetViewController;
-(void)setPasscodeVisible:(BOOL)arg1 animated:(BOOL)arg2;
@end

%hook SBLockScreenManager
-(void)lockScreenViewControllerDidPresent {
    %orig;
    if (self.coverSheetViewController.authenticated == NO) {
    [self setPasscodeVisible:YES animated:YES];
    }
}

-(void)tapToWakeControllerDidRecognizeWakeGesture:(id)arg1 {
    %orig;
    if (self.coverSheetViewController.authenticated == NO) {
    [self setPasscodeVisible:YES animated:YES];
    }
}
%end
