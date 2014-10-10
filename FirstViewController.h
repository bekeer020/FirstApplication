//
//  TestViewController.h
//  MyFirstApplication
//
//  Created by Abualwaleed on 10/6/14.
//  Copyright (c) 2014 Alkhaleej. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *myAgeLabel;
@property (strong, nonatomic) IBOutlet UILabel *myNameLabel;
@property (strong,nonatomic) NSMutableArray *myCars;
- (IBAction)genImage:(id)sender;
@end
