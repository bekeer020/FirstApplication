//
//  TestViewController.m
//  MyFirstApplication
//
//  Created by Abualwaleed on 10/6/14.
//  Copyright (c) 2014 Alkhaleej. All rights reserved.
//

#import "FirstViewController.h"
#import "Car.h"
#import "Hondai.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
   [super viewDidLoad];
    // Do any additional setup after loading the view.
  // self.view.backgroundColor=[UIColor orangeColor];
    
    
     Car *mycar=[[Car alloc] init];
    mycar.name=@"Samsung Galaxy";
    mycar.age=3;
    mycar.image=[UIImage imageNamed:@"flower1.png"];
    
    
    Car *mycar2=[[Car alloc] init];
    mycar2.name=@"Samsung Galaxy";
    mycar2.age=3;
    mycar2.image=[UIImage imageNamed:@"flower2.png"];
    
    Car *mycar3=[[Car alloc] init];
    mycar3.name=@"Samsung Galaxy";
    mycar3.age=3;
    mycar3.image=[UIImage imageNamed:@"flower3.png"];
    
    Car *mycar4=[[Car alloc] init];
    mycar4.name=@"Samsung Galaxy";
    mycar4.age=3;
    mycar4.image=[UIImage imageNamed:@"samsung1.jpg"];
    
    self.myImageView.image=mycar.image;
    self.myImageView.contentMode=UIViewContentModeScaleAspectFill;
    self.myAgeLabel.text=[NSString stringWithFormat:@"%d",mycar.age];
    self.myNameLabel.text=mycar.name;
    self.myNameLabel.adjustsFontSizeToFitWidth=YES;

    
    
    
    self.myCars=[[NSMutableArray alloc]init];
    
    [self.myCars addObject:mycar];
    [self.myCars addObject:mycar2];
    [self.myCars addObject:mycar3];
    [self.myCars addObject:mycar4];
    
    
    Hondai *hondaiLittle=[[Hondai alloc] init];
    [hondaiLittle giveHondaiPlan];
    [hondaiLittle bark];  //  here inheritance
    hondaiLittle.name=@"Snata 2011";
    hondaiLittle.image=[UIImage imageNamed:@"sonata.jpg"];
    
    [self.myCars addObject:hondaiLittle];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)genImage:(id)sender {
    
    int numberOfCars=(int)[self.myCars count];
    int randomIndex= arc4random()% numberOfCars;
    Car *randomCar=[self.myCars objectAtIndex:randomIndex];
    
    
    [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image=randomCar.image;
        self.myAgeLabel.text=[NSString stringWithFormat:@"%d",randomIndex];
    } completion:^(BOOL finished) {
        
    }];
    
    
      //self.myImageView.image=randomCar.image;
      // self.myAgeLabel.text=[NSString stringWithFormat:@"%d",randomIndex];
    
}
@end
