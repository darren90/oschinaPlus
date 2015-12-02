//
//  PostContentModel.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/2.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "PostContentModel.h"

@implementation PostContentModel
/**
 *  字典和模型不对应，手动写对应关系
 */
+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID" : @"id"};
}

@end
