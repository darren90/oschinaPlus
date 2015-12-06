//
//  BBSController.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/2.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "BBSController.h"
#import "PostModel.h"
#import "PostContentModel.h"
#import "PosterCell.h"
#import "BBSDetailController.h"

@interface BBSController ()
@property (nonatomic,strong)NSMutableArray * dataArray;

@end

@implementation BBSController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.rowHeight = 80;
    
    [self initData];
}

-(void)initData
{
    
//    access_token	true	string	oauth2_token获取的access_token
//    catalog	false	int	类别ID 1-问答 2-分享 3-IT杂烩(综合) 4-站务 100-职业生涯 0-所有	0
//    tag	false	string	帖子相关标签
//    pageSize	false	int	每页条数	20
//    page/pageIndex	false	int	页数	1
//    dataType	true	string	返回数据类型['json'|'jsonp'|'xml']	json

    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"access_token"] = K_Token;
//    params[@"catalog"] = @(1);
    params[@"page"] = @(1);
    params[@"pageSize"] = @(20);
    params[@"dataType"] = @"json";
    
    [AFNTool getWithURL:[NSString getUrlWithPort:KBBS] params:params success:^(id json) {
//        NSLog(@"--j:%@",json);
        PostModel *poster = [PostModel mj_objectWithKeyValues:json];
        [self.dataArray addObjectsFromArray:poster.post_list];
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
    PosterCell *cell = [PosterCell cellWithTableView:tableView];
    cell.model = self.dataArray[indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    BBSDetailController *detailVC = [sb instantiateViewControllerWithIdentifier:@"bbsdetailvc"];
    PostContentModel *model = self.dataArray[indexPath.row];
    detailVC.poster_id = model.ID;
    [self.navigationController pushViewController:detailVC animated:YES];
}


-(NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
