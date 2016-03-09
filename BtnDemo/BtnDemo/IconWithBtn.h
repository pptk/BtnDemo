//
//  iconWithBtn.h
//  BtnDemo
//
//  Created by ianc-ios on 16/3/9.
//  Copyright © 2016年 彭雄辉10/9. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IconWithBtn : UIButton

@property(nonatomic,strong)UIImage *selectedImage;//选中时候的图片。
@property(nonatomic,strong)UIImage *unSelectedImage;//没选中的时候的图片。
@property(nonatomic,copy)UIColor *selectedColor;
@property(nonatomic,copy)UIColor *unSelectedColor;

@end
