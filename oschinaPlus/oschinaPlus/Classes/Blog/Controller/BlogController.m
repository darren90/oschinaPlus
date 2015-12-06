//
//  BlogController.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/4.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "BlogController.h"
#import "BlogModel.h"
#import "BlogContentModel.h"
#import "NewsCell.h"
#import "BlogDetailController.h"

@interface BlogController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,weak)UITableView * tableView;
@property (nonatomic,strong)NSMutableArray * dataArray;

@end

@implementation BlogController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
    [self initData];
}

-(void)initData
{
//    access_token	true	string	oauth2_token获取的access_token
//    page/pageIndex	true	int	页数	1
//    pageSize	true	int	每页条数	20
//    dataType	true	string	返回数据类型['json'|'jsonp'|'xml']	json
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"access_token"] = K_Token;
    params[@"page"] = @(1);
    params[@"pageSize"] = @(20);
    params[@"dataType"] = @"json";
    
    [AFNTool getWithURL:[NSString getUrlWithPort:KBlog] params:params success:^(id json) {
        NSLog(@"--j:%@",json);
        BlogModel *model = [BlogModel mj_objectWithKeyValues:json];
        [self.dataArray addObjectsFromArray:model.bloglist];
        [self.tableView reloadData];
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
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsCell *cell = [NewsCell cellWithTableView:tableView];
    cell.blogContentModel = self.dataArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    BlogDetailController *detailVc = [sb instantiateViewControllerWithIdentifier:@"blogdetailvc"];
    BlogContentModel *model = self.dataArray[indexPath.row];
    detailVc.blog_id = model.ID;
    [self.navigationController pushViewController:detailVc animated:YES];
}



-(NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
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
