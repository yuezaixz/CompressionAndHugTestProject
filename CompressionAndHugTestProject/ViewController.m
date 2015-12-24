//
//  ViewController.m
//  CompressionAndHugTestProject
//
//  Created by 吴迪玮 on 15/12/24.
//  Copyright © 2015年 DNT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *hubTestLabel;

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)hugPlusAction:(id)sender {
    [self.hubTestLabel setContentHuggingPriority:501 forAxis:UILayoutConstraintAxisHorizontal];
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
}

- (IBAction)hugMinusAction:(id)sender {
    [self.hubTestLabel setContentHuggingPriority:499 forAxis:UILayoutConstraintAxisHorizontal];
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
}
- (IBAction)label1PlusAction:(id)sender {
    self.label2.text = @"Prio 499";
    self.label1.text = [NSString stringWithFormat:@"%@ %@",self.label1.text,@"500"];
    
}
- (IBAction)label2PlusAction:(id)sender {
    self.label1.text = @"Prio 500";
    self.label2.text = [NSString stringWithFormat:@"%@ %@",self.label2.text,@"499"];
    
}

@end
