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
    tile1.healthEffect = 100;
    tile1.actionButtonName = @"Boost your health";
    
    STCTile *tile2 = [[STCTile alloc]init];
    tile2.story = @"A blacksmith has made you a sword";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    STCWeapon *sword = [[STCWeapon alloc]init];
    sword.name = @"Sword";
    sword.damageNumber = 30;
    tile2.weapon = sword;
    tile2.actionButtonName = @"Take the sword";
    
    STCTile *tile3 = [[STCTile alloc]init];
    tile3.story = @"Dare to fight the pirate boss.";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile3.healthEffect = -50;
    tile3.actionButtonName = @"Fight the boss";
    
    NSMutableArray *column1 = [[NSMutableArray alloc]initWithObjects:tile1, tile2, tile3, nil];
    
    STCTile *tile4 = [[STCTile alloc]init];
    tile4.story = @"Can boost your health at the dock.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile4.healthEffect = 20;
    tile4.actionButtonName = @"Boost your health";
    
    STCTile *tile5 = [[STCTile alloc]init];
    tile5.story = @"An octopus is attacking.";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile5.healthEffect = - 20;
    tile5.actionButtonName = @"Fight the octopus";
    
    STCTile *tile6 = [[STCTile alloc]init];
    tile6.story = @"Parrots protect.  Use them as armor";
    tile6.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    STCArmor *parrot = [[STCArmor alloc]init];
    parrot.name = @"Parrot";
    parrot.healthNumber = 10;
    tile6.armor = parrot;
    tile6.actionButtonName = @"Parrot protection";
    
    NSMutableArray *column2 = [[NSMutableArray alloc]initWithObjects:tile4, tile5, tile6, nil];
    
    STCTile *tile7 = [[STCTile alloc]init];
    tile7.story = @"Pirates want you to walk the plank.";
    tile7.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile7.healthEffect = -20;
    tile7.actionButtonName = @"Walk the plank";
    
    STCTile *tile8 = [[STCTile alloc]init];
    tile8.story = @"See other pirate ships.  Do you want to fight?";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile8.healthEffect = -30;
    tile8.actionButtonName = @"Fight the pirate ships";
    
    STCTile *tile9 = [[STCTile alloc]init];
    tile9.story = @"A pirate is attacking.";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile9.healthEffect = -20;
    tile9.actionButtonName = @"Fight the pirate";
    
    NSMutableArray *column3 = [[NSMutableArray alloc]initWithObjects:tile7, tile8, tile9, nil];
    
    STCTile *tile10 = [[STCTile alloc]init];
    tile10.story = @"Pick up the treasure and boost your health";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile10.healthEffect = 50;
    tile10.actionButtonName = @"Pick up the treasure";
    
    STCTile *tile11 = [[STCTile alloc]init];
    tile11.story = @"Increase your health and take the pirate treasurer";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = 20;
    tile11.actionButtonName = @"Take the pirate treasurer";
    
    STCTile *tile12 = [[STCTile alloc]init];
    tile12.story = @"Have found weapons.  ";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    STCWeapon *cannon = [[STCWeapon alloc]init];
    cannon.name = @"Cannon";
    cannon.damageNumber = 50;
    tile12.weapon = cannon;
    tile12.actionButtonName = @"Take the cannon";
    
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

- (STCBoss *)boss
{
    STCBoss *boss = [[STCBoss alloc]init];
    boss.health = 65;
    return boss;
}

@end
