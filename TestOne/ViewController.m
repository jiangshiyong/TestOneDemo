//
//  ViewController.m
//  TestOne
//
//  Created by user on 13-11-27.
//  Copyright (c) 2013年 jiangshiyong. All rights reserved.
//

#import "ViewController.h"

#import "SCShapeView.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIView      *tempView = [[UIView alloc] initWithFrame:CGRectMake(30, 100, 200, 200)];
    [self.view addSubview:tempView];
    
    SCShapeView *_boundingBox = [[SCShapeView alloc] initWithFrame:self.view.bounds];
    _boundingBox.backgroundColor = [UIColor clearColor];
    [tempView addSubview:_boundingBox];
    
    
    NSArray *points= @[[NSValue valueWithCGPoint:CGPointMake(11, 0)],
                       [NSValue valueWithCGPoint:CGPointMake(11, tempView.frame.size.height/2-10)],
                       [NSValue valueWithCGPoint:CGPointMake(0, tempView.frame.size.height/2)],
                       [NSValue valueWithCGPoint:CGPointMake(11, tempView.frame.size.height/2+10)],
                       [NSValue valueWithCGPoint:CGPointMake(11, tempView.frame.size.height)]];
    
    // Set the corners array
    _boundingBox.corners = points;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
