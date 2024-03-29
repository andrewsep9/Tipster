//
//  ViewController.m
//  Tipster
//
//  Created by andrews9 on 6/25/19.
//  Copyright © 2019 andrews9. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UISlider *tipSlideVal;
@property (weak, nonatomic) IBOutlet UILabel *dollarLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Hello");
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    
    int tipPercentage = self.tipSlideVal.value;
    
    double tip = tipPercentage * .01 * bill;
    double total = bill + tip;
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.2f" , tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f" , total];
}
- (IBAction)onEditingBegin:(id)sender {
    [UIView animateWithDuration:0.2 animations:^{
        self.billField.frame = CGRectMake(self.billField.frame.origin.x, self.billField.frame.origin.y, self.billField.frame.size.width, self.billField.frame.size.height);
        
    }];
    
    [UIView animateWithDuration:.2 animations:^{
        self.dollarLabel.alpha = 0;
    }];
    
}

- (IBAction)onEditingEnd:(id)sender {
    CGRect newFrame = self.billField.frame;
//    newFrame.origin.y -= 30;
    
    [UIView animateWithDuration:0.2 animations:^{
        self.billField.frame = newFrame;
    }];
    
    self.billField.frame = newFrame;
    
    
}

- (IBAction)tipSlider:(id)sender {
    int tippercent = self.tipSlideVal.value;
    NSLog(@"%d", tippercent);
    
    self.tipLabel.text = [NSString stringWithFormat:@"%.0d" , tippercent];
    
    double bill = [self.billField.text doubleValue];
    double tip = tippercent*.01 * bill;
    double total = bill + tip;
    
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.2f" , tip];
    
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f" , total];
}






@end
