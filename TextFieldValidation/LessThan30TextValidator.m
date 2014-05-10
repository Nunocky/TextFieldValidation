//
//  LessThan30TextValidator.m
//  TextFieldValidation
//
//  Created by 布川祐人 on 2014/05/10.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "LessThan30TextValidator.h"

@implementation LessThan30TextValidator


-(BOOL)validate:(NSString*)string
{
    if (!string)
        return YES;
    
    return string.length < 30;
}

@end
