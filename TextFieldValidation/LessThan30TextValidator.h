//
//  LessThan30TextValidator.h
//  TextFieldValidation
//
//  Created by 布川祐人 on 2014/05/10.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LessThan30TextValidator : NSObject

-(BOOL)validate:(NSString*)string;
@end
