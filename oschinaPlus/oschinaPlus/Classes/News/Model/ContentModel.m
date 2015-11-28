//
//  ContentModel.m
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "ContentModel.h"

@implementation ContentModel
/**
 *  字典和模型不对应，手动写对应关系
 */
+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"ID" : @"id"};
}

//+ (NSDictionary *)objectClassInArray{
//    
//    return @{ @"actorViewList" : @"ActorModel",
//              @"seriesViewList" : @"SeriesModel",
//              @"paragraphViewList":@"NewImageModel"};
//}

@end
