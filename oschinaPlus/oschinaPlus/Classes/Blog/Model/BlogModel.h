//
//  BlogModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/12/5.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NoticeModel;

@interface BlogModel : NSObject


@property (nonatomic,strong)NSArray * bloglist;


@property (nonatomic,strong)NoticeModel * notice;

@end
