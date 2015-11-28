//
//  Account.h
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject
//"access_token" = "1fe2defc-c009-4f06-bfce-03ef5c9389a7";
//"expires_in" = 604775;
//"refresh_token" = "424e0815-bc55-4fd6-9fe5-648e87078085";
//"token_type" = bearer;
//uid = 1274886;

//access_token	string	access_token值
//refresh_token	string	refresh_token值
//token_type	string	access_token类型
//expires_in	int	超时时间(单位秒)
//uid	int	授权用户的uid

/**
 *  access_token值
 */
@property (nonatomic,copy)NSString * access_token;
/**
 *  超时时间(单位秒)
 */
@property (nonatomic,copy)NSString * expires_in;
/**
 *  access_token类型
 */
@property (nonatomic,copy)NSString * token_type;
/**
 *  授权用户的uid
 */
@property (nonatomic,copy)NSString * uid;

/**
 *  refresh_token值
 */
@property (nonatomic,copy)NSString * refresh_token;




@end
