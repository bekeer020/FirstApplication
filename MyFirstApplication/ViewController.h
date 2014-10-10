//
//  ViewController.h
//  MyFirstApplication
//
//  Created by Abualwaleed on 10/3/14.
//  Copyright (c) 2014 Alkhaleej. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface ViewController : UIViewController
+(NSString*) stringWithFloat2:(CGFloat) floatA;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

- (IBAction)ButtonPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)buttontest:(id)sender;
- (IBAction)secondButton:(id)sender;



@end

