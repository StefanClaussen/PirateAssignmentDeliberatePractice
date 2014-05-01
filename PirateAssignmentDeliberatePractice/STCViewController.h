//
//  STCViewController.h
//  PirateAssignmentDeliberatePractice
//
//  Created by Stefan Claussen on 30/04/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STCFactory.h"

@interface STCViewController : UIViewController

@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) STCCharacter *character;
@property (strong, nonatomic) STCBoss *boss;
@property (nonatomic)CGPoint currentPoint;

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorNameLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)restartButtonPressed:(UIButton *)sender;

@end
