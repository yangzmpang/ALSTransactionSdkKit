//
//  ALSTransactionKit.h
//  Pay-inner
//
//  Created by  杨子民 on 2017/12/4.
//  Copyright © 2017年 yangzm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALSPayment.h"
#import "ALSPaymentProtocol.h"

#define ALS_PAYMENT_WECHAT [[ALSTransactionKit shareManager] getService:ALSTKPaymentPlatformWechat]
#define ALS_PAYMENT_ALIPAY [[ALSTransactionKit shareManager] getService:ALSTKPaymentPlatformAlipay]
#define ALS_PAYMENT_IAP [[ALSTransactionKit shareManager] getService:ALSTKPaymentPlatfomIAP]


@interface ALSTransactionKit : NSObject
{
    
}

@property ( nonatomic, strong ) id WeChat;
@property ( nonatomic, strong) id AliPay;
@property ( nonatomic, strong) id IAPPay;

+ (instancetype)shareManager;
- (void)asyncInit:(NSString*)appid callback:(ALSPayCompleteCallBack)callback;
- (id)getService:( ALSTKPaymentPlatform )service;


@end
