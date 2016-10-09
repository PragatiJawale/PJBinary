//
//  ViewController.m
//  PJBinary
//
//  Created by Student P_06 on 24/09/16.
//  Copyright © 2016 pragati. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.labelOne.text = @"0";
    self.labelTwo.text = @"0";
    self.labelOutput.text = @"0";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)oneButtonAction:(id)sender {

    UIButton *button = sender;
    
    if (button.tag == 0) {
        button.tag = 1;
        self.labelOne.text = @"1";
        [button setTitle:@"One" forState:UIControlStateNormal];
    }
    else if (button.tag == 1) {
        button.tag = 0;
        self.labelOne.text = @"0";
        [button setTitle:@"Zero" forState:UIControlStateNormal];

    }
    
    [self calculateOutput];

    
    

}

- (IBAction)twoButtonAction:(id)sender {
    
    UIButton *button = sender;
    
    if (button.tag == 0) {
        button.tag = 1;
        self.labelTwo.text = @"1";
        [button setTitle:@"One" forState:UIControlStateNormal];
    }
    else if (button.tag == 1) {
        button.tag = 0;
        self.labelTwo.text = @"0";
        [button setTitle:@"Zero" forState:UIControlStateNormal];
        
    }
    
    
    [self calculateOutput];
}

- (IBAction)ThreeButtonAction:(id)sender {
}

-(void) calculateOutput {
    if ([self.labelOne.text isEqualToString:@"0"] && [self.labelTwo.text isEqualToString:@"0"]) {
        self.labelOutput.text = @"0";
    }
    else if ([self.labelOne.text isEqualToString:@"0"] && [self.labelTwo.text isEqualToString:@"1"]) {
        self.labelOutput.text = @"1";
    }
    else if ([self.labelOne.text isEqualToString:@"1"] && [self.labelTwo.text isEqualToString:@"0"]) {
        self.labelOutput.text = @"2";
    }
    else if ([self.labelOne.text isEqualToString:@"1"] && [self.labelTwo.text isEqualToString:@"1"]) {
        self.labelOutput.text = @"3";
    }

}
@end
