//
//  NewsDetailController.m
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "NewsDetailController.h"

@implementation NewsDetailController


-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initData];
}


-(void)initData
{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"id"] = self.news_id;
    params[@"access_token"] = @"1fe2defc-c009-4f06-bfce-03ef5c9389a7";
    params[@"dataType"] = @"json";
    [AFNTool getWithURL:[NSString getUrlWithPort:KNew_Detail] params:params success:^(id json) {
        NSString *urlStr = json[@"url"];
        NSLog(@"--urlStr:%@",urlStr);
        if (urlStr.length != 0) {
            NSURL *url = [NSURL URLWithString:urlStr];
            TOWebViewController *webViewController = [[TOWebViewController alloc] initWithURL:url];
            webViewController.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:webViewController animated:YES];
        }
   
    } failure:^(NSError *error) {
        NSLog(@"--eee:%@",error);
    }];
}



@end
