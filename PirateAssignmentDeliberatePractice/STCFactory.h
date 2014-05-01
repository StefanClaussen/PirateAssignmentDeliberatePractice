//
//  STCFactory.h
//  PirateAssignmentDeliberatePractice
//
//  Created by Stefan Claussen on 30/04/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "STCTile.h"
#import "STCCharacter.h"

@interface STCFactory : NSObject

- (NSArray *)tiles;

- (STCCharacter *)character;

@end
