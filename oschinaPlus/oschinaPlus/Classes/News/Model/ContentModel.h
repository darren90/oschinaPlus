//
//  ContentModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContentModel : NSObject

/**
 "id":26754,
 "author":"test33",
 "pubDate":"2013-09-17 16:49:50.0",
 "title":"asdfa",
 "authorid":253469,
 "commentCount":0,
 "type":4
 */

//news_list.id	long	新闻id
//news_list.author	string	投递者名称
//news_list.title	string	新闻标题
//news_list.pubDate	datetime	发布日期
//news_list.authorid	long	投递者编号
//news_list.commentCount	int	评论数
//news_list.type	long	新闻类型 [0-链接新闻|1-软件推荐|2-讨论区帖子|3-博客|4-普通新闻|7-翻译文章]

/**
 *  新闻id
 */
@property (nonatomic,copy)NSString * ID;
/**
 *  投递者名称
 */
@property (nonatomic,copy)NSString * author;
/**
 *  发布日期
 */
@property (nonatomic,copy)NSString * pubDate;
/**
 *  新闻标题
 */
@property (nonatomic,copy)NSString * title;
/**
 *  投递者编号
 */
@property (nonatomic,copy)NSString * authorid;
/**
 *  评论数
 */
@property (nonatomic,copy)NSString * commentCount;
/**
 *  新闻类型 [0-链接新闻|1-软件推荐|2-讨论区帖子|3-博客|4-普通新闻|7-翻译文章]
 */
@property (nonatomic,copy)NSString * type;






@end
