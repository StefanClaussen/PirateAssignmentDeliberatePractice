//
//  STCCharacter.h
//  PirateAssignmentDeliberatePractice
//
//  Created by Stefan Claussen on 01/05/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "STCArmor.h"
#import "STCWeapon.h"

@interface STCCharacter : NSObject

@property (nonatomic)int characterHealth;
@property (nonatomic)int damageLevel;
@property (strong, nonatomic)STCArmor *armor;
@property (strong, nonatomic)STCWeapon *weapon;

@end
