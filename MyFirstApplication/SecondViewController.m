//
//  SecondViewController.m
//  MyFirstApplication
//
//  Created by Abualwaleed on 10/6/14.
//  Copyright (c) 2014 Alkhaleej. All rights reserved.
//

#import "SecondViewController.h"
#import "Car.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor=[UIColor grayColor];
    
    
    NSString *str=@"Welcome in our class";
    NSArray *wordsSentense=[str componentsSeparatedByString:@" "];
    
    NSMutableArray *captalizedWords=[[NSMutableArray alloc] init];
    for (int word=0; word<[wordsSentense count]; word ++) {
        
        NSString *uncaptalized=[wordsSentense objectAtIndex:word];
        NSString *captalized=[uncaptalized capitalizedString];
        [captalizedWords addObject:captalized];
        
    }
NSLog(@"%@",captalizedWords);
    
    UIAlertView *myAlert=[[UIAlertView alloc] initWithTitle:@"Alert!" message:@"This is Alert Example" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
    [myAlert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}


@end
