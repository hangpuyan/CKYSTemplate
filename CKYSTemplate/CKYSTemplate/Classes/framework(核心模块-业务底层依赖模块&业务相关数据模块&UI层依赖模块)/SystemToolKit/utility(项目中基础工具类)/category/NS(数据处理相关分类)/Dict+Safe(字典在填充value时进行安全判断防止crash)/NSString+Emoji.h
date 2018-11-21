//
//  NSString+Emoji.h
//  OV3D
//
//  Created by kevin.tu on 16/6/1.
//  Copyright © 2016年 ov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Emoji)

// 检查字符串是否包含emoji表情
- (BOOL)containsEmoji;

- (BOOL)stringContainsEmoji;
- (BOOL)hasEmoji;
-(BOOL)isNineKeyBoard;
@end
