//
//  SCShapeView.h
//  TestOne
//
//  Created by user on 13-11-27.
//  Copyright (c) 2013年 jiangshiyong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCShapeView : UIView {

    NSArray *corners;
    CAShapeLayer *_outline1;
    CAShapeLayer *_outline2;
    
}

@property (nonatomic, strong) NSArray *corners;
@property (nonatomic, strong) CAShapeLayer *_outline1;
@property (nonatomic, strong) CAShapeLayer *_outline2;

@end
