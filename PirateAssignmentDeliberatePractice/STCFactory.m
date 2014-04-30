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
    tile1.story = @"Story 1";
    STCTile *tile2 = [[STCTile alloc]init];
    tile2.story = @"Story 2";
    STCTile *tile3 = [[STCTile alloc]init];
    tile3.story = @"Story 3";
    
    NSMutableArray *column1 = [[NSMutableArray alloc]initWithObjects:tile1, tile2, tile3, nil];
    
    STCTile *tile4 = [[STCTile alloc]init];
    tile4.story = @"Story 4";
    STCTile *tile5 = [[STCTile alloc]init];
    tile5.story = @"Story 5";
    STCTile *tile6 = [[STCTile alloc]init];
    tile6.story = @"Story 6";
    
    NSMutableArray *column2 = [[NSMutableArray alloc]initWithObjects:tile4, tile5, tile6, nil];
    
    STCTile *tile7 = [[STCTile alloc]init];
    tile7.story = @"Story 7";
    STCTile *tile8 = [[STCTile alloc]init];
    tile8.story = @"Story 8";
    STCTile *tile9 = [[STCTile alloc]init];
    tile9.story = @"Story 9";
    
    NSMutableArray *column3 = [[NSMutableArray alloc]initWithObjects:tile7, tile8, tile9, nil];
    
    STCTile *tile10 = [[STCTile alloc]init];
    tile10.story = @"Story 10";
    STCTile *tile11 = [[STCTile alloc]init];
    tile11.story = @"Story 11";
    STCTile *tile12 = [[STCTile alloc]init];
    tile12.story = @"Story 12";
    
    NSMutableArray *column4 = [[NSMutableArray alloc]initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tiles = [[NSMutableArray alloc]initWithObjects:column1, column2, column3, column4, nil];

    return tiles;
}

@end
