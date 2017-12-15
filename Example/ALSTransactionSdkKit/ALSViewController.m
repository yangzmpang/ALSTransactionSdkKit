//
//  ALSViewController.m
//  ALSTransactionSdkKit
//
//  Created by yangzmpang on 12/15/2017.
//  Copyright (c) 2017 yangzmpang. All rights reserved.
//

#import "ALSViewController.h"
#import <ALSTransactionSdkKit/ALSTransactionSdkKit.h>

@interface ALSViewController ()

@end

@implementation ALSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [NetHelp md5:@"123"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
