//
//  BlogController.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/4.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "BlogController.h"

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
    params[@"access_token"] = @"1fe2defc-c009-4f06-bfce-03ef5c9389a7";
    params[@"page"] = @(1);
    params[@"pageSize"] = @(20);
    params[@"dataType"] = @"json";
    
    [AFNTool getWithURL:[NSString getUrlWithPort:KBlog_Detail] params:params success:^(id json) {
        NSLog(@"--j:%@",json);
//        PosterDetailModel *model = [PosterDetailModel mj_objectWithKeyValues:json];
//        NSLog(@"--nmm:%@",model);
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
}


#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    PosterCell *cell = [PosterCell cellWithTableView:tableView];
//    cell.model = self.dataArray[indexPath.row];
    
    return nil;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    BBSDetailController *detailVC = [sb instantiateViewControllerWithIdentifier:@"bbsdetailvc"];
//    PostContentModel *model = self.dataArray[indexPath.row];
//    detailVC.poster_id = model.ID;
//    [self.navigationController pushViewController:detailVC animated:YES];
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
