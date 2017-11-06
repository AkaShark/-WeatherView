//
//  CALeftWeatherViewVIew.h
//  CamelliaApp
//
//  Created by kys-20 on 2017/11/3.
//  Copyright © 2017年 kys-20. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherModel.h"

/**
 代理方法
 */
@protocol pushToTheCityTableViewDelegate <NSObject>
- (void) pushToTheCityTableViewDelegate;

@end

@interface CALeftWeatherViewVIew : UIView
@property (nonatomic,strong)WeatherModel *model;
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UILabel *temperatureLable;
@property (nonatomic,strong) UIButton *locationLable;
@property (nonatomic,strong) UILabel *topLable;
@property (nonatomic,strong) UILabel *wetLable;
@property (nonatomic,strong) UILabel *weatherLable;
@property (nonatomic,weak) id<pushToTheCityTableViewDelegate>TVDelegate;
@end
