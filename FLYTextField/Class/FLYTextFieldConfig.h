//
//  FLYTextFieldConfig.h
//  FLYTextField
//
//  Created by fly on 2020/4/17.
//  Copyright © 2020 fly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

UIKIT_EXTERN CGFloat const FLYTextFieldLeftEdgeAutomaticWidth;

@interface FLYTextFieldConfig : NSObject

/**是否显示底线*/
@property (nonatomic, assign) BOOL showLine;
/**线的颜色*/
@property (nonatomic, strong) UIColor * lineColor;
/**线的粗细*/
@property (nonatomic, assign) CGFloat lineThickness;

/**左侧图片*/
@property (nonatomic, strong) UIImage * leftImage;
/**左侧图片的frame (设置的是leftImageView在leftView里的布局)*/
@property (nonatomic, assign) CGRect leftImageFrame;

/**光标左侧的距离 (其实就是leftView的宽度，输入的内容到左侧的距离)*/
@property (nonatomic, assign) CGFloat leftEdge;
/**隐藏光标*/
@property (nonatomic, assign) BOOL hiddenCursor;

/**提示文字的Font*/
@property (nonatomic, strong) UIFont * placeholderFont;
/**提示文字的颜色*/
@property (nonatomic, strong) UIColor * placeholderColor;


+ (instancetype)defaultConfig;

@end

NS_ASSUME_NONNULL_END
