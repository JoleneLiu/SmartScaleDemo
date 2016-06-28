//
//  ViewController.m
//  SmartScaleDemo
//
//  Created by hzw on 16/6/27.
//  Copyright © 2016年 John Huang. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"测试屏幕适配";
    
    CGRect rect = CGRectMake(20, 84, 40, 40);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:rect];
    imageView.image = [UIImage imageNamed:@"icon_40"];
    [self.view addSubview:imageView];
    
    CGRect rectScale = CGRectMake(80, 84, SkinScaleValue(40), SkinScaleValue(40));
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:rectScale];
    imageView1.image = [UIImage imageNamed:@"icon_40"];
    [self.view addSubview:imageView1];
    
    UIView *seperator = [[UIView alloc] initWithFrame:CGRectMake(SkinScaleValue(15), CGRectGetMaxY(imageView1.frame) + SkinScaleValue(15), CGRectGetWidth(self.view.frame) - SkinScaleValue(15) * 2, SkinScaleValue(15))];
    seperator.backgroundColor = [UIColor grayColor];
    [self.view addSubview:seperator];
    
    UIView *seperator1 = [[UIView alloc] initWithFrame:CGRectMake(15, CGRectGetMaxY(seperator.frame) + 15, CGRectGetWidth(self.view.frame) - 15 * 2, 15)];
    seperator1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:seperator1];
    
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(SkinScaleValue(15), CGRectGetMaxY(seperator1.frame) + SkinScaleValue(15), CGRectGetWidth(self.view.frame) - SkinScaleValue(15) * 2, SkinScaleValue(30))];
    label1.text = @"我是适配后效果";
    label1.textColor = [UIColor blackColor];
    label1.font = HXFont_ListTitle;
    [self.view addSubview:label1];
    
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(15, CGRectGetMaxY(label1.frame) + 15, CGRectGetWidth(self.view.frame) - 15 * 2, 30)];
    label2.text = @"我是适配前效果";
    label2.textColor = [UIColor blackColor];
    label2.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label2];
    
    
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn.frame = CGRectMake(SkinScaleValue(15), CGRectGetMaxY(label2.frame) + SkinScaleValue(15), CGRectGetWidth(self.view.frame) - SkinScaleValue(15) * 2, SkinScaleValue(44));
    [nextBtn setTitle:@"图像测试" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [nextBtn addTarget:self action:@selector(nextAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
}


- (void)nextAction:(id)sender
{
    ImageViewController *next = [[ImageViewController alloc] init];
    [self.navigationController pushViewController:next animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
