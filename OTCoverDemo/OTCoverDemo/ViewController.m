//
//  ViewController.m
//  OTCoverDemo
//
//  Created by yechunxiao on 14-9-21.
//  Copyright (c) 2014年 yechunxiao. All rights reserved.
//

#import "ViewController.h"
#import "OTCover.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>

@end

@implementation ViewController
{
    UIScrollView *scrollView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    OTCover *test = [[OTCover alloc] initWithTableViewWithHeaderImage:[UIImage imageNamed:@"image.png"] withOTCoverHeight:200 withTableViewStyle:UITableViewStylePlain];
    test.tableView.delegate = self;
    test.tableView.dataSource = self;
    [self.view addSubview:test];
    
//    OTCover *testForScrollView = [[OTCover alloc] initWithScrollViewWithHeaderImage:[UIImage imageNamed:@"image.png"] withOTCoverHeight:200 withScrollContentViewHeight:3000];
//    testForScrollView.scrollView.delegate = self;
//    [self.view addSubview:testForScrollView];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %d",indexPath.row + 1];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
