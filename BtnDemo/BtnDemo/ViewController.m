//
//  ViewController.m
//  BtnDemo
//
//  Created by ianc-ios on 16/3/9.
//  Copyright © 2016年 彭雄辉10/9. All rights reserved.
//

#import "ViewController.h"
#import "IconWithBtn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initBtn];
}

#pragma mark 注水动画。
-(void)initMask{
    UIImageView *imageLine = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    imageLine.image = [UIImage imageNamed:@"line.png"];
    [self.view addSubview:imageLine];
    
    UIImageView *imageGreenLine = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    imageGreenLine.image = [UIImage imageNamed:@"line_green.png"];
    //    imageGreenLine.layer.zPosition = 1;
    [self.view addSubview:imageGreenLine];
    
    UIView *maskView = [[UIView alloc]initWithFrame:CGRectMake(-100, 0, 100, 100)];
    maskView.backgroundColor = [UIColor yellowColor];
    //    maskView.alpha = 0.5;
    
    [UIView animateWithDuration:1 animations:^{
        maskView.frame = CGRectMake(0, 0, 100, 100);
    }];
    
    imageGreenLine.layer.mask = maskView.layer;
}
#pragma mark
-(void)initBtn{
    IconWithBtn *iconBtn = [[IconWithBtn alloc]init];
    iconBtn.frame = CGRectMake(100, 300, 100, 100);
    iconBtn.selectedImage = [UIImage imageNamed:@"abc.png"];
    iconBtn.unSelectedImage = [UIImage imageNamed:@"abc_selected.png"];
    iconBtn.backgroundColor = [UIColor yellowColor];//
    iconBtn.selectedColor = [UIColor yellowColor];
    iconBtn.unSelectedColor = [UIColor blackColor];
    
    [self.view addSubview:iconBtn];
    
    [iconBtn addTarget:self action:@selector(btnActions:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)btnActions:(UIButton *)sender{
    if(sender.selected){
        sender.selected = NO;
    }else{
        sender.selected = YES;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
