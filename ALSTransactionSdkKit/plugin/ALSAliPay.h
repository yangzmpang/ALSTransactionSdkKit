//
//  ALSPay.h
//  Pay-inner
//
//  Created by  杨子民 on 2017/12/14.
//  Copyright © 2017年 yangzm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALSPaymentProtocol.h"
#import "ALSThirdPartyPaymentInfitInfo.h"

@interface ALSAliPay : NSObject <ALSPaymentPlugProtocol>
{
    
}

@property(nonatomic,assign)BOOL isdebug;

- (ALSTKPaymentPlatform)getName;
- (BOOL)IsDebug;
- (void)setDebug:(BOOL)isdebug;
@end
