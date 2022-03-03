//
//  ViewController.m
//  CFiAdBottomViewSample
//
//  Created by Eric Chen on 2022/3/2.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    bottomView = [[MFAdBottom alloc] init];
    bottomView.bannerId = @"13117";
    bottomView.delegate = self;
    [bottomView debugInfo:YES];
    [bottomView requestAd];
    
    [self.view addSubview:bottomView];
}

- (void)onSuccessToMFAdBottom{
    
    NSLog(@"%@",NSStringFromSelector(_cmd));
    [bottomView show];
}

- (void)onFailToMFAdBottom{
    
    NSLog(@"%@",NSStringFromSelector(_cmd));
    
}

- (void)onClickToMFAdBottom{
    
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onCloseToMFAdBottom{
    
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

@end
