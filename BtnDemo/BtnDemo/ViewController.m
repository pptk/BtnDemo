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
    IconWithBtn *iconBtn = [[IconWithBtn alloc]init];
    iconBtn.frame = CGRectMake(100, 100, 100, 100);
    iconBtn.selectedImage = [UIImage imageNamed:@"abc.png"];
    iconBtn.unSelectedImage = [UIImage imageNamed:@"abc_selected.png"];
    iconBtn.backgroundColor = [UIColor yellowColor];//
    iconBtn.selectedColor = [UIColor yellowColor];
    iconBtn.unSelectedColor = [UIColor blackColor];
    
    [self.view addSubview:iconBtn];
    
    [iconBtn addTarget:self action:@selector(btnActions:) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
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
