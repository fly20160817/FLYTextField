//
//  FLYTextField.m
//  FLYTextField
//
//  Created by fly on 2020/4/17.
//  Copyright © 2020 fly. All rights reserved.
//

#import "FLYTextField.h"

@interface FLYTextField ()
{
    FLYTextFieldConfig * _config;
}

@property (nonatomic, strong) UIImageView * leftImageView;
@property (nonatomic, strong) CALayer * lineLayer;

@end

@implementation FLYTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initUI];
        
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.lineLayer.frame = CGRectMake(0, self.frame.size.height - self.config.lineThickness, self.frame.size.width, self.config.lineThickness);
    
    [self setupAttributedPlaceholder];
}

-(CGRect)leftViewRectForBounds:(CGRect)bounds
{
    if( self.config.leftEdge == FLYTextFieldLeftEdgeAutomaticWidth )
    {
        bounds.size.width = self.config.leftImageFrame.origin.x * 2 + self.config.leftImageFrame.size.width;
    }
    else
    {
        bounds.size.width = self.config.leftEdge;
    }
    
    return bounds;
}



#pragma mark - UI

- (void)initUI
{
    [self.layer addSublayer:self.lineLayer];
    
    self.leftView = [[UIView alloc] init];
    [self.leftView addSubview:self.leftImageView];
    self.leftViewMode = UITextFieldViewModeAlways;
}



#pragma mark - private methods

- (void)setupAttributedPlaceholder
{
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    if ( self.config.placeholderFont )
    {
        [dict setValue:self.config.placeholderFont forKey:NSFontAttributeName];
    }
    if ( self.config.placeholderColor )
    {
        [dict setValue:self.config.placeholderColor forKey:NSForegroundColorAttributeName];
    }
    
    if ( dict.count != 0 )
    {
        NSAttributedString * attributedString = [[NSAttributedString alloc] initWithString:self.placeholder attributes:dict.copy];
        self.attributedPlaceholder = attributedString;
    }
}



#pragma mark - setters and getters

-(void)setConfig:(FLYTextFieldConfig *)config
{
    _config = config;
    
    self.lineLayer.backgroundColor = config.lineColor.CGColor;
    self.lineLayer.hidden = !config.showLine;
    self.leftImageView.image = config.leftImage;
    self.leftImageView.frame = config.leftImageFrame;
    
    if ( config.hiddenCursor )
    {
        self.tintColor = [UIColor clearColor];
    }
    
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

- (FLYTextFieldConfig *)config
{
    if (!_config)
    {
        _config = [FLYTextFieldConfig defaultConfig];
    }
    return _config;
}

-(CALayer *)lineLayer
{
    if ( _lineLayer == nil )
    {
        _lineLayer = [CALayer layer];
    }
    return _lineLayer;
}

-(UIImageView *)leftImageView
{
    if ( _leftImageView == nil )
    {
        _leftImageView = [[UIImageView alloc] init];
    }
    
    return _leftImageView;
}

@end
