//
//  IPAddressTextValidator.m
//  TextFieldValidation
//
//  Created by 布川祐人 on 2014/05/10.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "IPAddressTextValidator.h"

@implementation IPAddressTextValidator

-(BOOL)validate:(NSString*)string
{
    if (!string)
        return NO;
    
    NSError *error = nil;
    NSString *pattern = @"^[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+$";
    // 本当は255以内の整数だけど今はまあこれで

    NSString *str = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    NSRegularExpression *regexp = [NSRegularExpression regularExpressionWithPattern:pattern
                                                                            options:0
                                                                              error:&error];

    NSTextCheckingResult *match = [regexp firstMatchInString:str
                                                     options:0
                                                       range:NSMakeRange(0, str.length)];

    return 0 < match.numberOfRanges;
}
@end
