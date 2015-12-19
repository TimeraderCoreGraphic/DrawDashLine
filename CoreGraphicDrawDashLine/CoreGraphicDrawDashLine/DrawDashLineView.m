//
//  DrawDashLineView.m
//  CoreGraphicDrawDashLine
//
//  Created by 李佳 on 15/12/19.
//  Copyright © 2015年 LiJia. All rights reserved.
//

#import "DrawDashLineView.h"

@implementation DrawDashLineView

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //设置头尾样式
    CGContextSetLineCap(ctx, kCGLineCapSquare);
    //设置转角样式
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    CGContextSetLineWidth(ctx, 5);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    
    //length 用来决定虚线的样式。
    CGFloat lengths[] = {10,20, 5, 10};
    CGContextSetLineDash(ctx, 0, lengths, 4);
    CGContextMoveToPoint(ctx, 100.0, 300.f);
    CGContextAddLineToPoint(ctx, 310.0,300.f);
    CGContextAddLineToPoint(ctx, 310.0, 400.f);
    CGContextAddLineToPoint(ctx, 100.f, 400.f);
    CGContextAddLineToPoint(ctx, 100.0, 300.f);
    
    CGContextStrokePath(ctx);
    
    CGContextAddRect(ctx, CGRectMake(200, 200, 100, 100));
    CGContextStrokePath(ctx);
}


@end
