//
//  STCViewController.m
//  PirateAssignmentDeliberatePractice
//
//  Created by Stefan Claussen on 30/04/2014.
//  Copyright (c) 2014 One foot after the other. All rights reserved.
//

#import "STCViewController.h"

@interface STCViewController ()

@end

@implementation STCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    STCFactory *factory = [[STCFactory alloc]init];
    self.tiles = [factory tiles];
    NSLog(@"%@", self.tiles);
    
    self.character = [factory character];
    NSLog(@"%@", self.character);
    
    
    self.currentPoint = CGPointMake(0, 0);
    NSLog(@"x is %f and y is %f", self.currentPoint.x, self.currentPoint.y);
    
    [self updateTile];
    [self updateDirectionButtons];
}

- (void)updateTile
{
    STCTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x]objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundImage;
    [self updateLabels];
}

- (void)updateLabels
{
    self.healthNumberLabel.text =  [NSString stringWithFormat:@"%i", self.character.characterHealth];
    self.damageNumberLabel.text = [NSString stringWithFormat:@"%i", self.character.damageLevel];
    self.weaponNameLabel.text = self.character.weapon.name;
    self.armorNameLabel.text = self.character.armor.name;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
}

- (IBAction)northButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateDirectionButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateDirectionButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateDirectionButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateDirectionButtons];
    [self updateTile];
}

- (BOOL)tileExistsAtPoint:(CGPoint)point
{
    if (point.x >= 0 && point.y >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x]count])
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

- (void)updateDirectionButtons
{
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
}



@end
