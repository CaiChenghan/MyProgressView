//
//  ViewController.m
//  MyProgressView
//
//  Created by 蔡成汉 on 15/9/7.
//  Copyright (c) 2015年 蔡成汉. All rights reserved.
//

#import "ViewController.h"
#import "MyProgressView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyProgressView *myProgressView1 = [[MyProgressView alloc]initWithFrame:CGRectMake(100, 100, 100, 10)];
    [self.view addSubview:myProgressView1];
    
    
    MyProgressView *myProgressView2 = [[MyProgressView alloc]initWithFrame:CGRectMake(100, 150, 100, 10)];
    myProgressView2.backColor = [UIColor greenColor];
    myProgressView2.frontColor = [UIColor blueColor];
    myProgressView2.rate = 0.2;
    myProgressView2.style = ShowStyleBorder;
    [self.view addSubview:myProgressView2];
    
    
    MyProgressView *myProgressView3 = [[MyProgressView alloc]initWithFrame:CGRectMake(100, 200, 100, 10)];
    myProgressView3.backImage = [UIImage imageNamed:@"intergralMall_progressIcon"];
    myProgressView3.cornerRadius = 6.0;
    [self.view addSubview:myProgressView3];
    
    MyProgressView *myProgressView = [[MyProgressView alloc]initWithFrame:CGRectMake(100, 250, 100, 10)];
    myProgressView.backImage = [UIImage imageNamed:@"intergralMall_progressIcon"];
    myProgressView.cornerRadius = 6.0;
    [myProgressView setRate:0.9 animation:YES];
    [self.view addSubview:myProgressView];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
