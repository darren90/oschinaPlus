//
//  NewsModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NoticeModel;

@interface NewsModel : NSObject
/**
 {
 "newslist": [
 {
 "id": 26754,
 "author": "test33",
 "pubDate": "2013-09-17 16:49:50.0",
 "title": "asdfa",
 "authorid": 253469,
 "commentCount": 0,
 "type": 4
 }
 ],
 "notice": {
 "replyCount": 0,
 "msgCount": 0,
 "fansCount": 0,
 "referCount": 0
 }
 }
 
 */

/**
*  新闻列表 - 存放的是ContentModel
*/
@property (nonatomic,strong)NSArray * newslist;

/**
 *  通知-一些消息
 */
@property (nonatomic,strong)NoticeModel * notice;


@end
