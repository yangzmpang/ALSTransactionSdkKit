//
//  ALSTransactionKit.h
//  Pay-inner
//
//  Created by  杨子民 on 2017/12/4.
//  Copyright © 2017年 yangzm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <public/ALSPayment.h>
#import <public/ALSPaymentProtocol.h>
#import <public/ALSThirdPartyPaymentInfitInfo.h>

#define ALS_PAYMENT_WECHAT [[ALSTransactionKit shareManager] getService:ALSTKPaymentPlatformWechat]
#define ALS_PAYMENT_ALIPAY [[ALSTransactionKit shareManager] getService:ALSTKPaymentPlatformAlipay]
#define ALS_PAYMENT_IAP [[ALSTransactionKit shareManager] getService:ALSTKPaymentPlatfomIAP]


@interface ALSTransactionKit : NSObject
{
    
}

@property ( nonatomic, strong ) id WeChat;
@property ( nonatomic, strong) id AliPay;
@property ( nonatomic, strong) id IAPPay;


/**
 是否使用调试url 
 */
@property (nonatomic,assign) BOOL isDebug;

+ (instancetype)shareManager;

- (void)asyncInit:(NSString*)appid callback:(ALSPayCompleteCallBack)callback;
- (id)getService:( ALSTKPaymentPlatform )service;
- (void)setService:( id<ALSPaymentPlugProtocol> )protocol;

@end
