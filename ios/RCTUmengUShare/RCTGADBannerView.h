//
//  RCTGADBannerView.h
//  RCTGoogleFirebaseAdmob
//
//  Created by liubinbin on 23/11/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMobileAds;
@class RCTEventDispatcher;

@interface RCTGADBannerView : UIView<GADBannerViewDelegate>
  @property (nonatomic, copy) NSString *bannerSize;
  @property (nonatomic, copy) NSString *adUnitID;
  @property (nonatomic, copy) NSString *testDeviceID;
  
- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;
- (GADAdSize)getAdSizeFromString:(NSString *)bannerSize;
- (void)loadBanner;

@end
