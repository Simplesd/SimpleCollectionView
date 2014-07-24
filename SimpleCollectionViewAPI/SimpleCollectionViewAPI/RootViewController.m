//
//  RootViewController.m
//  SimpleCollectionViewAPI
//
//  Created by Simple Shi on 7/18/14.
//  Copyright (c) 2014 Microthink Inc,. All rights reserved.
//

#import "RootViewController.h"
#import "SimpleCollectionViewAPI/UserAlbumListView.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"照片选择";
    _select_Btn.backgroundColor=[UIColor redColor];
    [_select_Btn.layer setCornerRadius:_select_Btn.frame.size.height/2];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(Return_Image_Action:) name:@"RETURN_IMAGE_SELECT" object:nil];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)photoSelect_Action:(id)sender {
    UserAlbumListView *userAlbum=[[UserAlbumListView alloc] init];
    UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:userAlbum];
    [self presentViewController:nav animated:YES completion:nil];
}
-(void) Return_Image_Action:(NSNotification *) notification{
    NSArray *images=[notification userInfo][@"images"];
    for (int i=0;i<images.count; i++) {
        UIImageView *img=(UIImageView *)[self.view viewWithTag:i+1];
        [img setImage:images[i]];
    }
}
@end
