//
//  FLYTextField.h
//  FLYTextField
//
//  Created by fly on 2020/4/17.
//  Copyright © 2020 fly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FLYTextFieldConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface FLYTextField : UITextField

@property (nonatomic, strong) FLYTextFieldConfig * config;

@end

NS_ASSUME_NONNULL_END
