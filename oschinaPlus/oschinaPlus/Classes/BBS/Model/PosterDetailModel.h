//
//  PosterDetailModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/12/4.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PosterDetailModel : NSObject

//"id": 121,
//"pubDate": "2009-02-24 23:47:54.0",
//"author": "红薯",
//"body": "04年1月写的一个在C语言中调用Java方法的小程序",
//"title": "04年1月写的一个在C语言中调用Java方法的小程序",
//"answerCount": 1,
//"authorid": 12,
//"viewCount": 441,
//"favorite": 1,
//"portrait": "http://static.oschina.net/uploads/user/0/12_50.jpg",
//"url": "http://liudong/question/12_121",
//"tags":["C","Java"]

//id	int	帖子ID
//pubDate	datetime	发布时间
//author	string	发帖人
//authorid	long	发帖人ID
//body	string	帖子内容
//title	string	帖子标题
//favorite	int	是否收藏 1-收藏 0-未收藏
//answerCount	int	回复数
//viewCount	int	浏览数
//portrait	string	发帖人用户头像地址
//url	string	帖子链接
//tags	array	相关标签

/**
 *  帖子ID
 */
@property (nonatomic,copy)NSString * ID;

/**
 *  发布时间
 */
@property (nonatomic,copy)NSDate * pubDate;
/**
 *  发帖人ID
 */
@property (nonatomic,copy)NSString * authorid;
/**
 *  帖子内容
 */
@property (nonatomic,copy)NSString * body;
/**
 *  帖子标题
 */
@property (nonatomic,copy)NSString * title;
/**
 *  是否收藏 1-收藏 0-未收藏
 */
@property (nonatomic,assign)int favorite;
/**
 *  回复数
 */
@property (nonatomic,assign)int answerCount;
/**
 *  浏览数
 */
@property (nonatomic,assign)int viewCount;
/**
 *  发帖人用户头像地址
 */
@property (nonatomic,copy)NSString * portrait;
/**
 *  帖子链接
 */
@property (nonatomic,copy)NSString * url;
/**
 *  是否收藏 1-收藏 0-未收藏
 */
@property (nonatomic,strong)NSArray * tags;


@end
