//
//  LSAuthenticatedViewController.m
//  LayerSample
//
//  Created by Kevin Coleman on 8/2/14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import "LSAuthenticatedViewController.h"
#import "LSPersistenceManager.h"
#import "OTContactListController.h"

@interface LSAuthenticatedViewController ()

@end

@implementation LSAuthenticatedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *logoutButton = [[UIBarButtonItem alloc] initWithTitle:@"Logout" style:UIBarButtonItemStylePlain target:self action:@selector(logout)];
    self.navigationItem.leftBarButtonItem = logoutButton;
    
    UIBarButtonItem *plusIcon = [[UIBarButtonItem alloc] initWithTitle:@"New chat" style:UIBarButtonItemStylePlain target:self action:@selector(addNewConversation)];
    self.navigationItem.rightBarButtonItem = plusIcon;
    NSSet *convs = [self.layerClient conversationsForIdentifiers:nil];
    NSLog(@"%@", convs);
}

- (void)logout
{
    [self.APIManager deauthenticateWithCompletion:^(BOOL success, NSError *error) {
        NSLog(@"Deauthenticated...");
    }];
}
- (void)addNewConversation
{
    OTContactListController *contactView = [[OTContactListController alloc] init];
    [self.navigationController presentViewController:contactView animated:YES completion:nil];
    //[self addDummyConversation];
}
- (void)addDummyConversation
{
    LYRConversation *dummyConv = [LYRConversation conversationWithParticipants:[NSArray array]];
    [self.APIManager loadContactsWithCompletion:^(NSSet *contacts, NSError *error) {
        [self.layerClient addParticipants:[[contacts allObjects] objectAtIndex:0] toConversation:dummyConv error:nil];
    }];
    
}

@end
