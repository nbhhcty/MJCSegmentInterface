//
//  MJCRightView.m
//  MJCSlideSwitch
//
//  Created by mjc on 16/10/26.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCRightView.h"

@interface MJCRightView ()

/** s */
@property (nonatomic,assign) NSInteger intrer1;


@end

@implementation MJCRightView

//重写方法 通过代码自定义控件,都要重写这个方法
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
    }
    
    
    return self;
    
}


//获取子控件(重写方法,保证能赋值成功)
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    
    
}

-(void)setRightBackgroundColor:(UIColor *)rightBackgroundColor
{
    
    if (rightBackgroundColor == kNilOptions) {
        self.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.5];
    }else{
        self.backgroundColor = rightBackgroundColor;
    }
    
}

-(void)setRightHeght:(CGFloat)rightHeght titlesButton:(UIButton *)titlesButton
{
    //设置右边竖线的位置
    self.mjc_x = titlesButton.mjc_width-0.5;
    
    if (rightHeght == kNilOptions) {
        self.mjc_height = titlesButton.mjc_height;
    }else{
        self.mjc_height = rightHeght;
    }
    self.mjc_centerY = titlesButton.mjc_centerY;
    self.mjc_width = 0.5;
}

-(void)setRightViewHidden:(BOOL)rightViewHidden setRightViewShow:(BOOL)rightViewShow inter:(NSUInteger)inter titlesArr:(NSArray *)titlesArr
    SegmentInterFaceStyle:(MJCSegmentInterfaceStyle)SegmentInterFaceStyle;
{
    //如果是SegMentInterfaceStyleLess
    if (SegmentInterFaceStyle == SegMentInterfaceStyleLess) {
        
        //如果不隐藏
        if (rightViewHidden == kNilOptions) {
            //判断最后一个下标等于数组的数量,那就隐藏
            if (inter+1 == titlesArr.count) {
                self.hidden = YES;
            }else{
                self.hidden = NO;
            }
        }else{
            //隐藏
            self.hidden = YES;
        }
        
    }else if (SegmentInterFaceStyle == SegMentInterfaceStyleMoreUse){
        
        if (rightViewHidden == kNilOptions) {
            
            //判断最后一个下标等于数组的数量,那就隐藏
            if (inter+1 == titlesArr.count) {
                self.hidden = YES;
            }else{
                self.hidden = NO;
            }
        }else{
            self.hidden = YES;
        }
        
        
    }else if (SegmentInterFaceStyle == SegMentInterfaceStyleClassic){//如果是默认样式(用rightViewShow)
        
        if (rightViewShow == kNilOptions) {
            self.hidden = YES;
        }else{
            if (inter+1 == titlesArr.count) {
                self.hidden = YES;
            }else{
                self.hidden = NO;
            }
        }

    }else if (SegmentInterFaceStyle == SegMentInterfaceStylePenetrate){//如果是穿透样式(用rightViewShow)
        
        if (rightViewShow == kNilOptions) {
            self.hidden = YES;
            
        }else{
            if (inter+1 == titlesArr.count) {
                self.hidden = YES;
            }else{
                self.hidden = NO;
            }
        }
        
        
    }else{
        if (rightViewHidden == kNilOptions) {
            if (inter+1 == titlesArr.count) {
                self.hidden = YES;
            }else{
                self.hidden = NO;
            }
        }else{
            self.hidden = YES;
        }
        
    }
}




@end
