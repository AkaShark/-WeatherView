//
//  CALeftWeatherViewVIew.m
//  CamelliaApp
//
//  Created by kys-20 on 2017/11/3.
//  Copyright © 2017年 kys-20. All rights reserved.
//
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


#define widthPix kScreenWidth/320
#define heightPix kScreenHeight/568
#import "CALeftWeatherViewVIew.h"
@implementation CALeftWeatherViewVIew

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.locationLable = [[UILabel alloc] initWithFrame:CGRectMake(self.bounds.size.width-self.bounds.size.width/3, self.bounds.size.height/5.3, self.bounds.size.width/3,self.bounds.size.width/12)];
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.bounds.size.width-self.bounds.size.width/3,self.bounds.size.height/4, self.bounds.size.width/3, self.bounds.size.width/3)];
        self.temperatureLable = [[UILabel alloc] initWithFrame:CGRectMake(self.bounds.size.width-self.bounds.size.width/2, self.bounds.size.height-_imageView.frame.size.height-_imageView.frame.origin.y, self.bounds.size.width/2,self.bounds.size.height/3)];
        self.temperatureLable.textColor =[UIColor whiteColor];
        self.temperatureLable.font = [UIFont systemFontOfSize:22];
        [self addSubview:self.imageView];
        [self addSubview:self.temperatureLable];
        [self addSubview:self.locationLable];
    }
    return self;
}

-(void)setModel:(WeatherModel *)model
{
    _model = model;
    self.temperatureLable.text = [NSString stringWithFormat:@"%@℃ / %@℃",[model.todayDic objectForKey:@"high"],[model.todayDic objectForKey:@"low"]];
    self.imageView.image =[UIImage imageNamed:[model.todayDic objectForKey:@"code_day"]];
    self.locationLable.text = model.cityName;
    self.locationLable.textColor = [UIColor whiteColor];
    self.locationLable.font = [UIFont systemFontOfSize:22];
    
    
}


@end
