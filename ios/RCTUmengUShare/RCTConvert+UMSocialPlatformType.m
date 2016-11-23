//
//  RCTConvert+UMSocialPlatformType.m
//  RCTUmengUShare
//
//  Created by liubinbin on 22/11/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//
#import <UMSocialCore/UMSocialCore.h>
#import "RCTConvert.h"

@implementation RCTConvert (UMSocialPlatformType)
RCT_ENUM_CONVERTER(UMSocialPlatformType, (
                                          @{
                                            @"UMSocialPlatformType_UnKnown" : @(UMSocialPlatformType_UnKnown),
                                            @"UMSocialPlatformType_Sina" : @(UMSocialPlatformType_Sina),
                                            @"UMSocialPlatformType_WechatSession" : @(UMSocialPlatformType_WechatSession),
                                            @"UMSocialPlatformType_WechatTimeLine" : @(UMSocialPlatformType_WechatTimeLine),
                                            @"UMSocialPlatformType_WechatFavorite" : @(UMSocialPlatformType_WechatFavorite),
                                            @"UMSocialPlatformType_QQ" : @(UMSocialPlatformType_QQ),
                                            @"UMSocialPlatformType_Qzone" : @(UMSocialPlatformType_Qzone),
                                            @"UMSocialPlatformType_TencentWb" : @(UMSocialPlatformType_TencentWb),
                                            @"UMSocialPlatformType_AlipaySession" : @(UMSocialPlatformType_AlipaySession),
                                            @"UMSocialPlatformType_YixinSession" : @(UMSocialPlatformType_YixinSession),
                                            @"UMSocialPlatformType_YixinTimeLine" : @(UMSocialPlatformType_YixinTimeLine),
                                            @"UMSocialPlatformType_YixinFavorite" : @(UMSocialPlatformType_YixinFavorite),
                                            @"UMSocialPlatformType_LaiWangSession" : @(UMSocialPlatformType_LaiWangSession),
                                            @"UMSocialPlatformType_LaiWangTimeLine" : @(UMSocialPlatformType_LaiWangTimeLine),
                                            @"UMSocialPlatformType_Sms" : @(UMSocialPlatformType_Sms),
                                            @"UMSocialPlatformType_Email" : @(UMSocialPlatformType_Email),
                                            @"UMSocialPlatformType_Renren" : @(UMSocialPlatformType_Renren),
                                            @"UMSocialPlatformType_Facebook" : @(UMSocialPlatformType_Facebook),
                                            @"UMSocialPlatformType_Twitter" : @(UMSocialPlatformType_Twitter),
                                            @"UMSocialPlatformType_Douban" : @(UMSocialPlatformType_Douban),
                                            @"UMSocialPlatformType_KakaoTalk" : @(UMSocialPlatformType_KakaoTalk),
                                            @"UMSocialPlatformType_Pinterest" : @(UMSocialPlatformType_Pinterest),
                                            @"UMSocialPlatformType_Line" : @(UMSocialPlatformType_Line),
                                            @"UMSocialPlatformType_Linkedin" : @(UMSocialPlatformType_Linkedin),
                                            @"UMSocialPlatformType_Flickr" : @(UMSocialPlatformType_Flickr),
                                            @"UMSocialPlatformType_Tumblr" : @(UMSocialPlatformType_Tumblr),
                                            @"UMSocialPlatformType_Instagram" : @(UMSocialPlatformType_Instagram),
                                            @"UMSocialPlatformType_Whatsapp" : @(UMSocialPlatformType_Whatsapp)
                                            }),
                   UMSocialPlatformType_UnKnown, integerValue)
@end
