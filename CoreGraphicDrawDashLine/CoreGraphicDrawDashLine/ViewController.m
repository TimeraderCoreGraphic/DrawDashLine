//
//  ViewController.m
//  CoreGraphicDrawDashLine
//
//  Created by 李佳 on 15/12/19.
//  Copyright © 2015年 LiJia. All rights reserved.
//

#import "ViewController.h"
#import "DrawDashLineView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    DrawDashLineView* lineView = [[DrawDashLineView alloc] init];
    lineView.frame = self.view.frame;
    lineView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:lineView];
}
@end
