//
//  STCTile.h
//  PirateAssignmentDeliberatePractice
//
//  Created by Stefan Claussen on 30/04/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "STCWeapon.h"
#import "STCArmor.h"

@interface STCTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) STCWeapon *weapon;
@property (strong, nonatomic) STCArmor *armor;
@property (nonatomic) int healthEffect;

@end
