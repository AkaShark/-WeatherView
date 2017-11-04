//
//  ViewController.m
//  小小的天气侧滑
//
//  Created by kys-20 on 2017/11/4.
//  Copyright © 2017年 kys-20. All rights reserved.
//

#import "ViewController.h"
#import "CALeftWeatherView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    CALeftWeatherView *weather = [[CALeftWeatherView alloc] init];
    weather.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:weather];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
