//
//  FLYTextFieldConfig.m
//  FLYTextField
//
//  Created by fly on 2020/4/17.
//  Copyright © 2020 fly. All rights reserved.
//

#import "FLYTextFieldConfig.h"

CGFloat const FLYTextFieldLeftEdgeAutomaticWidth = -1000;

@implementation FLYTextFieldConfig

+ (instancetype)defaultConfig
{
    FLYTextFieldConfig * config = [[FLYTextFieldConfig alloc] init];
    
    config.lineColor = [UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1];
    config.lineThickness = 1;
    config.leftEdge = FLYTextFieldLeftEdgeAutomaticWidth;
    
    return config;
}


@end
