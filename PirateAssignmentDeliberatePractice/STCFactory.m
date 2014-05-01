//
//  STCFactory.m
//  PirateAssignmentDeliberatePractice
//
//  Created by Stefan Claussen on 30/04/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import "STCFactory.h"

@implementation STCFactory

- (NSArray *)tiles
{
    STCTile *tile1 = [[STCTile alloc]init];
    tile1.story = @"Start your adventure";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    STCTile *tile2 = [[STCTile alloc]init];
    tile2.story = @"Pirate Blacksmith";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    STCTile *tile3 = [[STCTile alloc]init];
    tile3.story = @"Pirate Boss";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    
    NSMutableArray *column1 = [[NSMutableArray alloc]initWithObjects:tile1, tile2, tile3, nil];
    
    STCTile *tile4 = [[STCTile alloc]init];
    tile4.story = @"Pirate friendly dock";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    STCTile *tile5 = [[STCTile alloc]init];
    tile5.story = @"Octopus attack";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    STCTile *tile6 = [[STCTile alloc]init];
    tile6.story = @"Pirate Parrot";
    tile6.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    
    NSMutableArray *column2 = [[NSMutableArray alloc]initWithObjects:tile4, tile5, tile6, nil];
    
    STCTile *tile7 = [[STCTile alloc]init];
    tile7.story = @"Pirate Plank";
    tile7.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    STCTile *tile8 = [[STCTile alloc]init];
    tile8.story = @"Pirate ship battle";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    STCTile *tile9 = [[STCTile alloc]init];
    tile9.story = @"Pirate attack.";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    
    NSMutableArray *column3 = [[NSMutableArray alloc]initWithObjects:tile7, tile8, tile9, nil];
    
    STCTile *tile10 = [[STCTile alloc]init];
    tile10.story = @"Pirate Treasure";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    STCTile *tile11 = [[STCTile alloc]init];
    tile11.story = @"Pirate Treasurer";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    STCTile *tile12 = [[STCTile alloc]init];
    tile12.story = @"Pirate Weapons";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    
    NSMutableArray *column4 = [[NSMutableArray alloc]initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tiles = [[NSMutableArray alloc]initWithObjects:column1, column2, column3, column4, nil];

    return tiles;
}

- (STCCharacter *)character
{
    STCCharacter *character = [[STCCharacter alloc]init];
    character.characterHealth = 100;
    
    STCArmor *armor = [[STCArmor alloc]init];
    armor.name = @"Cloak";
    armor.healthNumber = 5;
    character.armor = armor;
    
    STCWeapon *weapon = [[STCWeapon alloc]init];
    weapon.name = @"Fists";
    weapon.damageNumber = 10;
    character.weapon = weapon;
    
    return character;
}

@end
