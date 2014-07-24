//
//  RootViewController.h
//  SimpleCollectionViewAPI
//
//  Created by Simple Shi on 7/18/14.
//  Copyright (c) 2014 Microthink Inc,. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIImageView *image1;
@property (nonatomic, weak) IBOutlet UIImageView *image2;
@property (nonatomic, weak) IBOutlet UIImageView *image3;
@property (nonatomic, weak) IBOutlet UIImageView *image4;
@property (nonatomic, weak) IBOutlet UIImageView *image5;
@property (nonatomic, weak) IBOutlet UIImageView *image6;
@property (nonatomic, weak) IBOutlet UIImageView *image7;
@property (nonatomic, weak) IBOutlet UIImageView *image8;
@property (nonatomic, weak) IBOutlet UIImageView *image9;
@property (weak, nonatomic) IBOutlet UIButton *select_Btn;

- (IBAction)photoSelect_Action:(id)sender;
@end
