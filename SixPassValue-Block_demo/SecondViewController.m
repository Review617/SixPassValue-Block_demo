//
//  SecondViewController.m
//  SixPassValue-Block_demo
//
//  Created by lanou3g on 15/9/17.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (retain, nonatomic) IBOutlet UITextField *TF;

@end

@implementation SecondViewController


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    //调用block
    self.passValueBlock(_TF.text);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    [_TF release];
    [super dealloc];
}
@end
