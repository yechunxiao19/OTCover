//
//  ViewController.m
//  OTCoverDemo
//
//  Created by yechunxiao on 14-9-21.
//  Copyright (c) 2014年 yechunxiao. All rights reserved.
//

#import "ViewController.h"
#import "OTCover.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    OTCover *test = [[OTCover alloc] initWithHeaderImage:[UIImage imageNamed:@"image.png"] withContentHeight:4000];
    [self.view addSubview:test];
    [test setHeaderImage:[UIImage imageNamed:@"image.png"]];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 40)];
    nameLabel.text = @"OTMediumCover";
    nameLabel.font = [UIFont fontWithName:@"Arial" size:30];
    nameLabel.textAlignment =  NSTextAlignmentCenter;
    [test.scrollContentView addSubview:nameLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
