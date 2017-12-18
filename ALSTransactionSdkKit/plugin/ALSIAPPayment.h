//
//  ALSIAPPayment.h
//  Pay-inner
//
//  Created by  杨子民 on 2017/12/18.
//  Copyright © 2017年 yangzm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALSPaymentProtocol.h"


@interface ALSIAPPayment : NSObject <ALSPaymentPlugProtocol>
{
    
}

@property(nonatomic,assign)BOOL isdebug;

- (ALSTKPaymentPlatform)getName;
- (BOOL)IsDebug;
- (void)setDebug:(BOOL)isdebug;
@end
