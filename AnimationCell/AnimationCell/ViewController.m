//
//  ViewController.m
//  AnimationCell
//
//  Created by smppw_zwq on 2019/7/15.
//  Copyright © 2019 smppw_zwq. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"
#import "TestTableViewCell.h"


#define kScreenHeight         [[UIScreen mainScreen] bounds].size.height
// 获取屏幕宽度 即:整屏的宽度
#define kScreenWidth            [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView * testTableView;

@property(nonatomic,strong)NSMutableArray * modelArrays;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.modelArrays = [NSMutableArray array];
    

    [self.view addSubview:self.testTableView];


    
    
    for (int i =0; i <30; i ++) {

        
        TestModel * testModel = [[TestModel alloc]init];
        
        if (i==0) {
            
            testModel.roomStates=3;

        }else if (i==1){
            
            testModel.roomStates=3;

        }else if (i==2){
            testModel.roomStates=3;

        }
        
        else{
            
            testModel.roomStates=0;

        }
        
        [self.modelArrays addObject:testModel];
        
        
        
    }
    
    
    [self.testTableView reloadData];
    
}





- (UITableView * )testTableView{
    
    
    if (!_testTableView) {
        
        _testTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight) style:UITableViewStylePlain];
        _testTableView.dataSource = self;
        _testTableView.delegate = self;
        
    }
    
    return _testTableView;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    
    return self.modelArrays.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    

    TestTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        
        cell = [[TestTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    cell.testModel = self.modelArrays[indexPath.row];
    
    
    return cell;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    return 100;
    
    
}


@end
