//
//  FirstViewController.m
//  SixPassValue-Block_demo
//
//  Created by lanou3g on 15/9/17.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()
@property (retain, nonatomic) IBOutlet UITextField *TF;

@end

@implementation FirstViewController
- (IBAction)pushAction:(id)sender {
    
    SecondViewController *secondVC=[[[SecondViewController alloc]init]autorelease];
    [self.navigationController pushViewController:secondVC animated:YES];
    
    //给block 变量赋值
    __block FirstViewController *firstVC=self;
    secondVC.passValueBlock=^(NSString *text)
    {
       //给当前视图的控件赋值
        firstVC.TF.text=text;
    };
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
