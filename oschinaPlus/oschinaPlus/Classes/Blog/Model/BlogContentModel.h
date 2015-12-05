//
//  BlogContentModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/12/5.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogContentModel : NSObject
//"id": 49090,
//"pubDate": "2012-03-13 23:01:52.0",
//"author": "whxia320",
//"title": "mongodb for java使用中的小问题",
//"authorid": 100399,
//"type": 1,
//"commentCount": 7

//bloglist.id	long	博客id
//bloglist.author	string	投递者名称
//bloglist.title	string	博客标题
//bloglist.pubDate	datetime	发布日期
//bloglist.authorid	long	投递者编号
//bloglist.commentCount	int	评论数
//bloglist.type	long	1-原创 4-转载

/**
 *  博客id
 */
@property (nonatomic,copy)NSString * ID;
/**
 *  投递者名称
 */
@property (nonatomic,copy)NSString * author;
/**
 *  博客标题
 */
@property (nonatomic,copy)NSString * title;
/**
 *  发布日期
 */
@property (nonatomic,copy)NSString * pubDate;
/**
 *  投递者编号id
 */
@property (nonatomic,copy)NSString * authorid;
/**
 *  评论数
 */
@property (nonatomic,copy)NSString * commentCount;
/**
 *  博客类型 1-原创 4-转载
 */
@property (nonatomic,copy)NSString * type;


@end
