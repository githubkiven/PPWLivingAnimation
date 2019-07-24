//
//  TestTableViewCell.m
//  AnimationCell
//
//  Created by smppw_zwq on 2019/7/15.
//  Copyright © 2019 smppw_zwq. All rights reserved.
//

#import "TestTableViewCell.h"
#import "UIView+Frame.h"
#define kScreenHeight         [[UIScreen mainScreen] bounds].size.height
// 获取屏幕宽度 即:整屏的宽度
#define kScreenWidth            [[UIScreen mainScreen] bounds].size.width


@implementation TestTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    
    if (self) {
        
        
        _livingView = [[UIView alloc]initWithFrame:CGRectMake(kScreenWidth-5-60, 5, 60, 15)];
        _livingView.backgroundColor = [UIColor orangeColor];
        _livingView.hidden =YES;
        _livingView.layer.cornerRadius=3;
        _livingView.clipsToBounds = YES;
        _livingView.layer.shouldRasterize = YES;
        _livingView.layer.rasterizationScale = [UIScreen mainScreen].scale;
        [self.contentView addSubview:_livingView];
        
        
        UILabel * livingLabel = [[UILabel alloc]initWithFrame:CGRectMake(_livingView.width-40, 0, 40, 15)];
        //        livingLabel.backgroundColor = [UIColor blueColor];
        livingLabel.text = @"直播中";
        livingLabel.font = [UIFont systemFontOfSize:11];
        livingLabel.textColor = [UIColor whiteColor];
        livingLabel.textAlignment = NSTextAlignmentCenter;
        [_livingView addSubview:livingLabel];
        
        
        self.roadLeftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, (15-12)/2, 12, 12)];
        self.roadLeftImageView.right =livingLabel.left-3;
        [_livingView addSubview:self.roadLeftImageView];

        
        
        
    }
    
    return self;
    
    
    
    
    
    
    
}

- (void)setTestModel:(TestModel *)testModel{
    
    _testModel = testModel;
    
    _livingView.hidden =YES;

    if (testModel.roomStates==0) {
        
        
    }else if (testModel.roomStates==3) {
        
        
        _livingView.hidden =NO;
        
        
        NSArray*imageArray=@[[UIImage imageNamed:@"road1"],[UIImage imageNamed:@"road2"]];
        
        // 设置图片的序列帧 图片数组
        self.roadLeftImageView.animationImages=imageArray;
        //动画重复次数
        self.roadLeftImageView.animationRepeatCount=0;
        //动画执行时间,多长时间执行完动画
        self.roadLeftImageView.animationDuration=0.4;
        [self.roadLeftImageView startAnimating];

    }
    
    
    
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
