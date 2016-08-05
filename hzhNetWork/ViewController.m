//
//  ViewController.m
//  hzhNetWork
//
//  Created by mac on 16/5/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "HzhNetwork.h"//网络请求

#define KBASEURL @"http://unit.wulidingdang.com/api/"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /** 看控制台输出 */
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2.0-60, self.view.frame.size.height/2.0-20, 120, 40)];
    label.text = @"看控制台输出";
    [self.view addSubview:label];
    [self getTheData];//获取数据
    
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark -- getData
/** 该例子为常用的post请求,其他方法类同 */
- (void)getTheData {
    [HzhNetwork POST:@"getSale.php" baseURL:KBASEURL params:@{@"method":@"getActSaleOnLine"} success:^(NSURLSessionDataTask *task, id responseObject) {
        
    NSLog(@"%@",responseObject);
        
    } fail:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
}

#pragma amrk --- sign签名规则


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
