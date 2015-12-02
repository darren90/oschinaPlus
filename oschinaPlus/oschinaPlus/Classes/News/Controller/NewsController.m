//
//  NewsController.m
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "NewsController.h"
#import "NewsModel.h"
#import "ContentModel.h"
#import "NewsCell.h"
#import "NewsDetailController.h"

@interface NewsController ()

@property (nonatomic,strong)NSMutableArray * dataArray;

@end

@implementation NewsController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.rowHeight = 60;
    [self initData];
}


-(void)initData
{
    
//    access_token	true	string	oauth2_token获取的access_token
//    catalog	true	int	1-所有|2-综合新闻|3-软件更新	1
//    page/pageIndex	true	int	页数	1
//    pageSize	true	int	每页条数	20
//    dataType	true	string	返回数据类型['json'|'jsonp'|'xml']	json
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"access_token"] = @"1fe2defc-c009-4f06-bfce-03ef5c9389a7";
    params[@"catalog"] = @(1);
    params[@"page"] = @(1);
    params[@"pageSize"] = @(20);
    params[@"dataType"] = @"json";
    
    [AFNTool getWithURL:[NSString getUrlWithPort:KNews] params:params success:^(id json) {
        NSLog(@"--j:%@",json);
        NewsModel *news = [NewsModel mj_objectWithKeyValues:json];
        [self.dataArray addObjectsFromArray:news.newslist];
        [self.tableView reloadData];
    } failure:^(NSError *error) {
        NSLog(@"--eee:%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsCell *cell = [NewsCell cellWithTableView:tableView];
    cell.model = self.dataArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ContentModel *model = self.dataArray[indexPath.row];
    NewsDetailController *detailVc = [[NewsDetailController alloc]init];
    detailVc.news_id = model.ID;//[model.ID intValue];
    [self.navigationController pushViewController:detailVc animated:YES];
//    [self performSegueWithIdentifier:@"newsdetail" sender:nil];
}



-(NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}
 
@end
