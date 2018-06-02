//
//  ViewController.m
//  BugByNSUInteger
//
//  Created by liyiping on 2018/6/2.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *array = @[];

    NSUInteger uinteger = array.count;
    NSLog(@"uinteger = %lu", uinteger);
    
    NSUInteger reduceUinteger = uinteger - 1;//由于是一个无符号整数，所以这里的返回的和预期值完全不同
    NSLog(@"reduceUinteger = %lu", reduceUinteger);//18446744073709551615(它等于2的64次方-1,也就是64位系统的最大数减一)
    
    
    NSInteger intger = (NSInteger)array.count;//这是强制转换NSUInteger为NSInteger
    NSInteger reduceOfIntger = intger - 1;
    NSLog(@"reduceOfIntger = %ld", reduceOfIntger);
}

@end
