//
//  BlogDetailModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/12/5.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NoticeModel;
@interface BlogDetailModel : NSObject

//"id": 49262,
//"body": "博客内容Demo",
//"pubDate": "2013-10-08 16:19:38.0",
//"author": "张艺辰",
//"title": "博客标题Demo",
//"authorid": 253479,
//"notice": {
//    "replyCount": 0,
//    "msgCount": 0,
//    "fansCount": 0,
//    "referCount": 0
//},
//"favorite": 0,
//"commentCount": 0,
//"url": "http://home.oschina.org/yidongnan/blog/49262"


//id	long	博客编号
//title	string	博客标题
//body	string	博客内容（HTML）
//pubDate	datetime	发布日期
//authorid	long	投递者编号
//favorite	int	是否收藏 1-收藏 0-未收藏
//commentCount	int	评论数
//url	string	博客地址
//relativies.title	string	新闻标题
//relativies.url	string	新闻原链接
//notice.replyCount	int	未读评论数
//notice.msgCount	int	未读私信数
//notice.fansCount	int	新增粉丝数
//notice.referCount	int	未读@我数


@property (nonatomic,copy)NSString * ID;


@property (nonatomic,copy)NSString * title;


@property (nonatomic,copy)NSString * body;


@property (nonatomic,copy)NSString * pubDate;


@property (nonatomic,copy)NSString * authorid;


@property (nonatomic,assign)int favorite;

@property (nonatomic,copy)NSString * commentCount;

@property (nonatomic,copy)NSString * url;


@property (nonatomic,strong)NoticeModel * notice;



@end
