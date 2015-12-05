//
//  BlogDetailController.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/5.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "BlogDetailController.h"

@interface BlogDetailController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,weak)UITableView *tableView;

@property (nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation BlogDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
    [self initData];
}

-(void)initData
{
//    id	true	long	博客编号	空
//    access_token	false	string	oauth2_token获取的access_token 传则显示是否收藏 用户未登录则不传
//    dataType	false	string	返回数据类型 ['json'|'jsonp'|'xml']	json
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"access_token"] = @"1fe2defc-c009-4f06-bfce-03ef5c9389a7";
    params[@"id"] = self.blog_id;
    params[@"dataType"] = @"json";
    
    [AFNTool getWithURL:[NSString getUrlWithPort:KBlog_Detail] params:params success:^(id json) {
        NSLog(@"--j:%@",json);
//        BlogModel *model = [BlogModel mj_objectWithKeyValues:json];
//        [self.dataArray addObjectsFromArray:model.bloglist];
//        [self.tableView reloadData];
    } failure:^(NSError *error) {
        NSLog(@"--eee:%@",error);
    }];
}


-(void)initTableView
{
    UITableView *tableView = [[UITableView alloc]init];
    self.tableView = tableView;
    tableView.frame = self.view.bounds;
    [self.view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 60;
}



#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;//self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NewsCell *cell = [NewsCell cellWithTableView:tableView];
//    cell.blogContentModel = self.dataArray[indexPath.row];
    return nil;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    BlogDetailController *detailVc = [sb instantiateViewControllerWithIdentifier:@"blogdetailvc"];
//    BlogContentModel *model = self.dataArray[indexPath.row];
//    detailVc.blog_id = model.ID;
//    [self.navigationController pushViewController:detailVc animated:YES];
}



-(NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
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
