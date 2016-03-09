//
//  iconWithBtn.m
//  BtnDemo
//
//  Created by ianc-ios on 16/3/9.
//  Copyright © 2016年 彭雄辉10/9. All rights reserved.
//

#import "IconWithBtn.h"
#define ICONVIEW_WIDTH 20
#define ICONVIEW_HEIGHT 20

@implementation IconWithBtn


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    UIImageView *iconView = [[UIImageView alloc]initWithFrame:CGRectMake(rect.size.width-(ICONVIEW_WIDTH/2), rect.origin.y-(ICONVIEW_HEIGHT/2), ICONVIEW_WIDTH, ICONVIEW_HEIGHT)];
    iconView.contentMode = UIViewContentModeScaleAspectFill;
    [self addSubview:iconView];
    
    if(self.selected){
        self.backgroundColor = self.selectedColor;
        iconView.image = self.selectedImage;
    }else{
        self.backgroundColor = self.unSelectedColor;
        iconView.image = self.unSelectedImage;
    }
}


@end
