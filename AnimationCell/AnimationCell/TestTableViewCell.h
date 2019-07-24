//
//  TestTableViewCell.h
//  AnimationCell
//
//  Created by smppw_zwq on 2019/7/15.
//  Copyright © 2019 smppw_zwq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestTableViewCell : UITableViewCell
@property(nonatomic,strong)UIView * livingView;


@property(nonatomic,strong)UIImageView *roadLeftImageView;
@property(nonatomic,strong)TestModel *testModel;

@end

NS_ASSUME_NONNULL_END
