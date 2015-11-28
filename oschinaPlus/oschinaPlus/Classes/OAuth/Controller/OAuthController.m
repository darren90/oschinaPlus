//
//  OAuthController.m
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "OAuthController.h"

@interface OAuthController ()<UIWebViewDelegate>

@end

@implementation OAuthController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIWebView *webView = [[UIWebView alloc]init];
    [self.view addSubview:webView];
    webView.frame = self.view.bounds;
    webView.delegate = self;
    
    //http://www.oschina.net/action/oauth2/authorize?response_type=code&client_id=vAdtOo4xaeocczPzRBK8&redirect_uri=http://my.oschina.net/fengtengfei/blog
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.oschina.net/action/oauth2/authorize?response_type=code&client_id=%@&redirect_uri=%@",KOSCAPPID,KOSCRedirectUri]];
    NSURLRequest *requet = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requet];
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
//    [MBProgressHUD showMessage:@"Loading"];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
//    [MBProgressHUD hideHUD];
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
//    [MBProgressHUD hideHUD];
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSString *url = request.URL.absoluteString;
    NSRange range = [url rangeOfString:@"code="];
    if (range.location != NSNotFound) {
        NSLog(@"%@",url);
        int fromIndex = (int)(range.location +range.length);
        NSString *code = [url substringFromIndex:fromIndex];
        
        if ([code rangeOfString:@"&state="].location != NSNotFound) {
            NSString *ccode = [[code componentsSeparatedByString:@"&state="] firstObject];
            //利用code换取accessToken；
            [self accessTokenWithCode:ccode];
        }
        return NO;
    }
    return YES;
}


-(void)accessTokenWithCode:(NSString *)code
{
    NSString *url = @"https://api.weibo.com/oauth2/access_token";
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"client_id"] = KOSCAPPID;
    dict[@"client_secret"] = KOSCAPPKey;
    dict[@"grant_type"] = @"authorization_code";
    dict[@"code"] = code;
    dict[@"redirect_uri"] = KOSCRedirectUri;
    [AFNTool getWithURL:url  params:dict success:^(id json) {
        NSLog(@"--j:%@",json);
    } failure:^(NSError *error) {
        
    }];
//
//    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
//    mgr.responseSerializer = [AFJSONResponseSerializer serializer];
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    dict[@"client_id"] = KWeiboAPPKey;
//    dict[@"client_secret"] = KWeiboAPPSecret;
//    dict[@"grant_type"] = @"authorization_code";
//    dict[@"code"] = code;
//    dict[@"redirect_uri"] = KRedirectUri;
//    
//    [mgr POST:url parameters:dict success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
//        [MBProgressHUD hideHUD];
//        
//        Account *account = [Account accountWithDict:responseObject];
//        
//        [AccountTool saveAccount:account];
//        
//        [UIWindow switchRootViewVC];
//        
//    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
//        TFLog(@"faile---:%@",error);
//        [MBProgressHUD hideHUD];
//    }];
    
}



@end
