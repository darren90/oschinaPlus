//
//  PostContentModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/12/2.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AnswerModel;
@interface PostContentModel : NSObject
//"id": 82977,
//"author": "彭博",
//"pubDate": "2012-12-18 16:20:08.0",
//"title": "测试youku视频地址",
//"answerCount": 0,
//"authorid": 89964,
//"answer": "",
//"portrait": "http://static.oschina.net/uploads/user/44/89964_50.jpg?t=1376365607000",
//"viewCount": 12


//post_list.id	int	帖子ID
//post_list.authorid	long	发布者ID
//post_list.author	string	发帖人
//post_list.pubDate	datetime	发布时间
//post_list.title	string	帖子标题
//post_list.answerCount	int	回复数
//post_list.answer.time	datetime	最后回帖时间
//post_list.answer.name	string	最后回帖用户
//post_list.portrait	string	发帖人用户头像地址
//post_list.viewCount	int	浏览数


/**
 *  帖子ID
 */
@property (nonatomic,copy)NSString * ID;
/**
 *  发布者ID
 */
@property (nonatomic,copy)NSString * authorid;
/**
 *  发帖人
 */
@property (nonatomic,copy)NSString * author;
/**
 *  发布时间
 */
@property (nonatomic,copy)NSString * pubDate;
/**
 *  新闻标题
 */
@property (nonatomic,copy)NSString * title;
/**
 *  回复数
 */
@property (nonatomic,copy)NSString * answerCount;

/**
 *  发帖人用户头像地址
 */
@property (nonatomic,copy)NSString * portrait;
/**
 *  浏览数
 */
@property (nonatomic,copy)NSString * viewCount;

/**
 *  AnswerModel
 */
@property (nonatomic,strong)AnswerModel * answer;



///**
// *  新闻类型 [0-链接新闻|1-软件推荐|2-讨论区帖子|3-博客|4-普通新闻|7-翻译文章]
// */
//@property (nonatomic,copy)NSString * type;


@end
