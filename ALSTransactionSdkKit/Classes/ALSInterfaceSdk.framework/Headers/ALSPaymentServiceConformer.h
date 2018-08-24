//
//  ALSPaymentServiceConformer.h
//  Pay-inner
//
//  Created by  杨子民 on 2017/12/1.
//  Copyright © 2017年 yangzm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <public/ALSPaymentProtocol.h>

@interface ALSPaymentServiceConformer: NSObject<ALSPaymentService>
{
    
}

- (void)setInitDelegate:(id)alsthirdpartypaymentInitDelegate;
- (bool)supportPlatform:(ALSTKPaymentPlatform)platform;
- (void)startPayment:(ALSPayment*)payment callback:(ALSPayCompleteCallBack)callback;
- (void)queryPaymentWithOrderId: (NSString*)orderid  callback:(ALSPayCompleteCallBack)callback;
- (BOOL)handleThirdPartyPaymentCallback:(NSURL*)url;

- (void)getPaymentInfor:(ALSPayment*)payment callback:(ALSPayCompleteCallBack)back;
@end
