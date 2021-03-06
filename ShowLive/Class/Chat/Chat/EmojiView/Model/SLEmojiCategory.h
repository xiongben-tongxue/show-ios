//
//  SLEmojiCategory.h
//  ShowLive
//
//  Created by 周华 on 2018/4/11.
//  Copyright © 2018年 vning. All rights reserved.
// SLEmojiCategory -> SLEmojiPageData -> SLEmoji

#import <Foundation/Foundation.h>
#import "SLEmojiPageData.h"

@interface SLEmojiCategory : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray<SLEmojiPageData *> *pageDataList;

@end
