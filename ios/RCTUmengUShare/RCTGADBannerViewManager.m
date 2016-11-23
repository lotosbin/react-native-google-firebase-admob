//
//  RCTGADBannerViewManager.m
//  RCTGoogleFirebaseAdmob
//
//  Created by liubinbin on 23/11/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RCTGADBannerViewManager.h"
#import "RCTBridge.h"
#import "RCTGADBannerView.h"

@implementation RCTGADBannerViewManager
  RCT_EXPORT_MODULE();
  @synthesize bridge = _bridge;
- (UIView *)view
  {
    return [[RCTGADBannerView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
  }
  - (NSArray *) customDirectEventTypes
  {
    return @[
             @"onSizeChange",
             @"onAdViewDidReceiveAd",
             @"onDidFailToReceiveAdWithError",
             @"onAdViewWillPresentScreen",
             @"onAdViewWillDismissScreen",
             @"onAdViewDidDismissScreen",
             @"onAdViewWillLeaveApplication"
             ];
  }
  - (dispatch_queue_t)methodQueue
  {
    return dispatch_get_main_queue();
  }
  RCT_EXPORT_VIEW_PROPERTY(bannerSize, NSString);
  RCT_EXPORT_VIEW_PROPERTY(adUnitID, NSString);
  RCT_EXPORT_VIEW_PROPERTY(testDeviceID, NSString);
@end
