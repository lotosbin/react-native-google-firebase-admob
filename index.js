// @flow
/**
 * Created by user on 16/8/17.
 */
import React, {
    Platform,

} from 'react-native';
var UMengUShareModule = require('react-native').NativeModules.UMengUShare;
export const UMSocialPlatformType= {
    UnKnown: UMengUShareModule.UMSocialPlatformType_UnKnown,
    Sina: UMengUShareModule.UMSocialPlatformType_Sina,
    WechatSession: UMengUShareModule.UMSocialPlatformType_WechatSession,
    WechatTimeLine: UMengUShareModule.UMSocialPlatformType_WechatTimeLine,
    WechatFavorite: UMengUShareModule.UMSocialPlatformType_WechatFavorite,
    QQ: UMengUShareModule.UMSocialPlatformType_QQ,
    Qzone: UMengUShareModule.UMSocialPlatformType_Qzone,
    TencentWb: UMengUShareModule.UMSocialPlatformType_TencentWb,
    AlipaySession: UMengUShareModule.UMSocialPlatformType_AlipaySession,
    YixinSession: UMengUShareModule.UMSocialPlatformType_YixinSession,
    YixinTimeLine: UMengUShareModule.UMSocialPlatformType_YixinTimeLine,
    YixinFavorite: UMengUShareModule.UMSocialPlatformType_YixinFavorite,
    LaiWangSession: UMengUShareModule.UMSocialPlatformType_LaiWangSession,
    LaiWangTimeLine: UMengUShareModule.UMSocialPlatformType_LaiWangTimeLine,
    Sms: UMengUShareModule.UMSocialPlatformType_Sms,
    Email: UMengUShareModule.UMSocialPlatformType_Email,
    Renren: UMengUShareModule.UMSocialPlatformType_Renren,
    Facebook: UMengUShareModule.UMSocialPlatformType_Facebook,
    Twitter: UMengUShareModule.UMSocialPlatformType_Twitter,
    Douban: UMengUShareModule.UMSocialPlatformType_Douban,
    KakaoTalk: UMengUShareModule.UMSocialPlatformType_KakaoTalk,
    Pinterest: UMengUShareModule.UMSocialPlatformType_Pinterest,
    Line: UMengUShareModule.UMSocialPlatformType_Line,
    Linkedin: UMengUShareModule.UMSocialPlatformType_Linkedin,
    Flickr: UMengUShareModule.UMSocialPlatformType_Flickr,
    Tumblr: UMengUShareModule.UMSocialPlatformType_Tumblr,
    Instagram: UMengUShareModule.UMSocialPlatformType_Instagram,
    Whatsapp: UMengUShareModule.UMSocialPlatformType_Whatsapp
}
class UMengUShare{
    setUmSocialAppkey(key:String) {
        UMengUShareModule.setUmSocialAppkey(key);
    }
    removePlatformProvider(type:$Keys<typeof UMSocialPlatformType>){
        UMengUShareModule.removePlatformProviderWithPlatformTypes(type);
    }
    share(){
        UMengUShareModule.share();
    }
    async shareTextAsync(text:String){
         return await UMengUShareModule.shareText(text);
    }
    async shareTextToPlatformTypeAsync(text:String){
        return await UMengUShareModule.shareTextToPlatformTypeAsync(text);
    }
};
export default new UMengUShare();