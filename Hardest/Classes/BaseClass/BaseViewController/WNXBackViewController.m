//
//  WNXBackViewController.m
//  Hardest
//
//  Created by sfbest on 16/2/26.
//  Copyright © 2016年 维尼的小熊. All rights reserved.
//

#import "WNXBackViewController.h"

@interface WNXBackViewController ()

@end

@implementation WNXBackViewController

- (void)loadView {
    [super loadView];
    
    UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 50, 48)];
    backButton.adjustsImageWhenHighlighted = NO;
    [backButton setBackgroundImage:[UIImage imageNamed:@"bt_back"] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(backButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)backButtonClick {
    [[WNXSoundToolManager sharedSoundToolManager] playSoundWithSoundName:kSoundCliclName];
    [self.navigationController popViewControllerAnimated:NO];
    
}

- (void)dealloc {
    NSLog(@"%s", __func__);
}

@end
