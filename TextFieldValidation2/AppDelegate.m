//
//  AppDelegate.m
//  TextFieldValidation2
//
//  Created by 布川祐人 on 2014/05/10.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "AppDelegate.h"
#import "IPAddressTextValidator.h"
#import "LessThan30TextValidator.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

-(void)setText0:(NSString *)text0
{
    if ([_text0 isEqualToString:text0])
        return;
    _text0 = [text0 copy];
    
    IPAddressTextValidator *validator = [[IPAddressTextValidator alloc] init];
    if (![validator validate:_text0]) {
        [_textField0 setBackgroundColor:[NSColor redColor]];
    }
    else {
        [_textField0 setBackgroundColor:[NSColor whiteColor]];
    }
}

-(void)setText1:(NSString *)text1
{
    if ([_text1 isEqualToString:text1])
        return;
    _text1 = [text1 copy];
    
    LessThan30TextValidator *validator = [[LessThan30TextValidator alloc] init];
    if (![validator validate:_text1]) {
        [_textField1 setBackgroundColor:[NSColor redColor]];
    }
    else {
        [_textField1 setBackgroundColor:[NSColor whiteColor]];
    }
}
@end
