//
//  AppDelegate.h
//  TextFieldValidation2
//
//  Created by 布川祐人 on 2014/05/10.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField0;
@property (weak) IBOutlet NSTextField *textField1;


@property (nonatomic, copy) NSString *text0;
@property (nonatomic, copy) NSString *text1;
@end
