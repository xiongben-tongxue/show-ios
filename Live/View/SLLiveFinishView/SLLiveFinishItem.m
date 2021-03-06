//
//  SLLiveFinishItem.m
//  ShowLive
//
//  Created by gongxin on 2018/4/14.
//  Copyright © 2018年 vning. All rights reserved.
//

#import "SLLiveFinishItem.h"
@interface SLLiveFinishItem ()

@property(nonatomic, strong)UILabel *titleLabel;
@property(nonatomic, strong)UILabel *valueLabel;

@end

@implementation SLLiveFinishItem

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _initView];
    }
    return self;
}

-(void)setTitle:(NSString *)title
{
    _title = title;
    _titleLabel.text = title;
}

-(void)setValue:(NSString *)value
{
    _value = value;
    _valueLabel.text = value;
  
}

- (void)setTitleColor:(UIColor *)titleColor {
    
    _titleColor = titleColor;
    self.titleLabel.textColor = _titleColor;
}

- (void)setValueColor:(UIColor *)valueColor {
    
    _valueColor = valueColor;
    self.valueLabel.textColor = _valueColor;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _titleLabel.width = self.width;
    _valueLabel.width = self.width;
}

-(void)setValueFont:(UIFont*)font
{
    self.valueLabel.font = font;
}

#pragma mark - private

-(void)_initView
{
    [self _initValueLabel];
    [self _initTitleLabel];
}

-(void)_initValueLabel
{
    CGFloat fontSize = (KScreenWidth>320)?18:16;
    
    _valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.width, 24)];
    _valueLabel.font = [UIFont systemFontOfSize:fontSize];
    _valueLabel.textColor = [UIColor whiteColor];
    _valueLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_valueLabel];
}

-(void)_initTitleLabel
{
     CGFloat fontSize = (KScreenWidth>320)?18:16;
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_valueLabel.frame) + 10, self.width, 16)];
    _titleLabel.font = [UIFont systemFontOfSize:fontSize];
    _titleLabel.textColor =[[UIColor whiteColor] colorWithAlphaComponent:0.7];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_titleLabel];
}



@end
