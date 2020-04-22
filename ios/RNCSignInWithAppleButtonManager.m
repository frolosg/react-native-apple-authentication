#import <React/RCTViewManager.h>
#import <React/RCTUtils.h>
#import "RNCSignInWithAppleButton.h"
@import AuthenticationServices;

@interface RNCSignInWithAppleButtonManager : RCTViewManager

@property (nonatomic, strong) RNCSignInWithAppleButton *appleSignInButton;
@end

@implementation RNCSignInWithAppleButtonManager

RCT_EXPORT_MODULE(RNCSignInWithAppleButtonManager)


RCT_EXPORT_METHOD(sendTapEvent)
{
  [self.appleSignInButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}

- (UIView *)view
{
    
  self.appleSignInButton = [[RNCSignInWithAppleButton alloc] initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeDefault authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
    return self.appleSignInButton;
}

RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

@end
