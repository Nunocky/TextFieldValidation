//
//  AppDelegate.m
//  TextFieldValidation
//
//  Created by 布川祐人 on 2014/05/10.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "AppDelegate.h"
#import "IPAddressTextValidator.h"
#import "LessThan30TextValidator.h"

@interface AppDelegate()
{
    BOOL launched;
}

@end

@implementation AppDelegate

-(void)controlTextDidEndEditing:(NSNotification *)notification
{
    NSTextField *tf = [notification object];
    NSString *identifier = [tf identifier];

    
    if ([identifier isEqualToString:@"ipaddress"]) {
        IPAddressTextValidator *validator = [[IPAddressTextValidator alloc] init];
        if (![validator validate:tf.stringValue]) {
            NSRunAlertPanel(@"error",
                            @"invalid format",
                            @"close",
                            nil,
                            nil);
        }
    }
    else if ([identifier isEqualToString:@"lessthan30"]) {
        LessThan30TextValidator *validator = [[LessThan30TextValidator alloc] init];
        if (![validator validate:tf.stringValue]) {
            NSRunAlertPanel(@"error",
                            @"30文字以内",
                            @"close",
                            nil,
                            nil);
        }
    }
}


@end
