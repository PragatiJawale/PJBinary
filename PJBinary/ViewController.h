//
//  ViewController.h
//  PJBinary
//
//  Created by Student P_06 on 24/09/16.
//  Copyright © 2016 pragati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)oneButtonAction:(id)sender;
- (IBAction)twoButtonAction:(id)sender;
- (IBAction)ThreeButtonAction:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *labelOne;
@property (strong, nonatomic) IBOutlet UILabel *labelTwo;
@property (strong, nonatomic) IBOutlet UILabel *labelOutput;
@property (strong, nonatomic) IBOutlet UILabel *labelThree;

@end

