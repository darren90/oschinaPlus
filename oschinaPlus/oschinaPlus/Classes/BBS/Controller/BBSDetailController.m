//
//  BBSDetailController.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/4.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "BBSDetailController.h"
#import "PosterDetailModel.h"

@interface BBSDetailController ()

@end

@implementation BBSDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initData];
}

-(void)initData
{
//    id	true	string	帖子ID	0
//    access_token	true	string	oauth2_token获取的access_token 传则显示是否收藏
//    dataType	true	string	返回数据类型['json'|'jsonp'|'xml']	json
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"access_token"] = K_Token;
    params[@"id"] = self.poster_id;
    params[@"dataType"] = @"json";
    
    [AFNTool getWithURL:[NSString getUrlWithPort:KBBS_Detail] params:params success:^(id json) {
            NSLog(@"--j:%@",json);
        PosterDetailModel *model = [PosterDetailModel mj_objectWithKeyValues:json];
        NSLog(@"--nmm:%@",model);
    } failure:^(NSError *error) {
        NSLog(@"--eee:%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
