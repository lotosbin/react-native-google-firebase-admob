//
//  RCTUmengAnalytics.m
//  RCTUmengAnalytics
//
//  Created by user on 16/8/17.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTUMengUShare.h"
#import <UMSocialCore/UMSocialCore.h>
#import "UMSocialUIManager.h"

@implementation RCTUMengUShare
RCT_EXPORT_MODULE();
RCT_EXPORT_METHOD(setUmSocialAppkey:(NSString *)key){
    //打开调试日志
    [[UMSocialManager defaultManager] openLog:YES];

    //设置友盟appkey
    [[UMSocialManager defaultManager] setUmSocialAppkey:key];

    // 获取友盟social版本号
    NSLog(@"UMeng social version: %@", [UMSocialGlobal umSocialSDKVersion]);

    // 如果不想显示平台下的某些类型，可用以下接口设置
//    [[UMSocialManager defaultManager] removePlatformProviderWithPlatformTypes:@[@(UMSocialPlatformType_WechatFavorite),@(UMSocialPlatformType_YixinTimeLine),@(UMSocialPlatformType_LaiWangTimeLine),@(UMSocialPlatformType_Qzone)]];;
}
RCT_EXPORT_METHOD(openLog:(BOOL)open){
  //打开调试日志
  [[UMSocialManager defaultManager] openLog:open];
}
RCT_EXPORT_METHOD(removePlatformProviderWithPlatformTypes:(UMSocialPlatformType)type){
   [[UMSocialManager defaultManager] removePlatformProviderWithPlatformTypes:@[@(type)]];;
}

RCT_EXPORT_METHOD(setPlaform:(UMSocialPlatformType)type appKey:(NSString *)appKey appSecret:(NSString *)appSecret redirectURL:(NSString *) redirectURL){
  //设置领英的appKey和appSecret
  [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Linkedin appKey:appKey  appSecret:appSecret redirectURL:redirectURL];
}

RCT_EXPORT_METHOD(share){
  [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMShareMenuSelectionView *shareSelectionView,UMSocialPlatformType platformType) {
    // 根据platformType调用相关平台进行分享
    
  }];
}
RCT_EXPORT_METHOD(shareText:(NSString*) message
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject){
  [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMShareMenuSelectionView *shareSelectionView,UMSocialPlatformType platformType) {
    // 根据platformType调用相关平台进行分享
    //创建分享消息对象
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    //设置文本
    messageObject.text = message;
    
    //调用分享接口
    [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:self completion:^(id data, NSError *error) {
      if (error) {
        NSLog(@"************Share fail with error %@*********",error);
        reject(@"shareTextToPlatformType",@"shareTextToPlatformType",error);
      }else{
        NSLog(@"response data is %@",data);
        resolve(data);
      }
    }];
  }];
}
RCT_EXPORT_METHOD(shareTextToPlatformType:(UMSocialPlatformType)platformType
                  text:(NSString*) message
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
  //创建分享消息对象
  UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
  //设置文本
  messageObject.text = message;
  
  //调用分享接口
  [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:self completion:^(id data, NSError *error) {
    if (error) {
      NSLog(@"************Share fail with error %@*********",error);
      reject(@"shareTextToPlatformType",@"shareTextToPlatformType",error);
    }else{
      NSLog(@"response data is %@",data);
      resolve(data);
    }
  }];
}

- (NSDictionary *)constantsToExport
{
  return @{
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
           };
}

@end
