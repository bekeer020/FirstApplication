//
//  Car.h
//  MyFirstApplication
//
//  Created by Abualwaleed on 10/4/14.
//  Copyright (c) 2014 Alkhaleej. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Car : NSObject

@property (nonatomic) int age;
@property (nonatomic,strong) NSString *name;
@property (strong,nonatomic) UIImage *image;

-(void) bark;

@end
