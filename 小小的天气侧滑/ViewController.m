//
//  ViewController.m
//  小小的天气侧滑
//
//  Created by kys-20 on 2017/11/4.
//  Copyright © 2017年 kys-20. All rights reserved.
//

#import "ViewController.h"
#import "CALeftWeatherView.h"
#import "CALeftWeatherViewVIew.h"
#import "CityGroupTableViewController.h"
#import "CALeftWeatherViewVIew.h"
@interface ViewController ()<pushTOTheCityTableViewDontKnow>
@property (nonatomic,strong) CALeftWeatherView *weatherView;
@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    //设置导航栏背景图片为一个空的image，这样就透明了
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    //去掉透明后导航栏下边的黑边
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];

    _weatherView = [[CALeftWeatherView alloc] init];
    _weatherView.delegate = self;
    _weatherView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:_weatherView];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)pushTOTheCityTableViewDontKnow
{
    CityGroupTableViewController *cityCtrl = [[CityGroupTableViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cityCtrl];
    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"navBg3"]
                           forBarPosition:UIBarPositionAny
                               barMetrics:UIBarMetricsDefault];
    nav.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    nav.navigationBar.tintColor = [UIColor whiteColor];
    [self presentViewController:nav animated:YES completion:nil];
    

    [cityCtrl setBlock:^void (NSString *cityName){
        
        [_weatherView.weatherView.locationLable setTitle:cityName forState:UIControlStateNormal];
        
        [_weatherView sendRequestToServer:cityName];
        [_weatherView.weatherView.topLable removeFromSuperview];
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
