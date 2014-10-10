//
//  ViewController.m
//  MyFirstApplication
//
//  Created by Abualwaleed on 10/3/14.
//  Copyright (c) 2014 Alkhaleej. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiskeyboard)];
    [self.view addGestureRecognizer:tap];
    self.title = @"Some Title";
    
    float somevalue=17.9;
    NSNumber *num=[NSNumber numberWithFloat:somevalue];
   NSLog(@"Aziz:%@",[num stringValue]);
  
}

-(void) dismiskeyboard
{
    [self.textField resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+(NSString*) stringWithFloat2:(CGFloat) floatA
{
    NSString *str=[NSString stringWithFormat:@"Q1234 %f",floatA];
    return str;
}


- (IBAction)ButtonPressed:(UIButton*)sender {
    
    self.titleLabel.text=@"Wardah Saeed Dram";
    self.titleLabel.adjustsFontSizeToFitWidth=true;
   // self.titleLabel.backgroundColor=[UIColor brownColor];
    
    
    //-------------
    self.titleLabel.text=self.textField.text;
    
    
    //cancel keyboard
   // [self.textField resignFirstResponder];
    
    // لتغيير خلفية الزر نفسه
   // UIButton *btn= sender;
   // btn.backgroundColor=[UIColor greenColor];
    
   // self.title = self.textField.text;
    [self.navigationItem setTitle:self.textField.text];
}

-(IBAction)cleartext:(id)sender
{
    
    self.titleLabel.text=@"";
}
- (IBAction)buttontest:(id)sender
{
   
    FirstViewController *test=[[FirstViewController alloc] init];
    test.myNameLabel.text=@"1234";
    test=[self.storyboard instantiateViewControllerWithIdentifier:@"FirstView"];
  [self presentViewController:test animated:YES completion:nil];
    

}

- (IBAction)secondButton:(id)sender {
    
    SecondViewController *snd=[[SecondViewController alloc] init];
    snd=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondView"];
    [self presentViewController:snd animated:YES completion:nil];
    
}
@end
