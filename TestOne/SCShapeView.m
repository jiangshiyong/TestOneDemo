//
//  SCShapeView.m
//  TestOne
//
//  Created by user on 13-11-27.
//  Copyright (c) 2013年 jiangshiyong. All rights reserved.
//

#import "SCShapeView.h"

@implementation SCShapeView
@synthesize corners;
@synthesize _outline1;
@synthesize _outline2;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    
        _outline1 = [CAShapeLayer new];
        _outline1.strokeColor = [[[UIColor blueColor] colorWithAlphaComponent:0.8] CGColor];
        _outline1.lineWidth = 2.0;
        _outline1.fillColor = [[UIColor clearColor] CGColor];
        [self.layer addSublayer:_outline1];
        
    }
    return self;
}


- (void)setCorners:(NSArray *)corners2
{
    if(corners2 != corners) {
        corners = corners2;
        _outline1.path = [[self createPathFromPoints1:corners] CGPath];
    }
}


- (UIBezierPath *)createPathFromPoints1:(NSArray *)points
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    // Start at the first
    [path moveToPoint:[[points firstObject] CGPointValue]];
    
    // Now draw lines around the corners
    for (NSUInteger i = 1; i < [points count]; i++) {
        
        [path addLineToPoint:[points[i] CGPointValue]];
        [path moveToPoint:[points[i] CGPointValue]];
    }
    [path closePath];

    return path;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
