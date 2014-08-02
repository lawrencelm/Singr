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
//import "OTChatView.h"

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
    NSLog(@"CONVERSATIONS: %@", convs);
}

- (void)logout
{
    [self.APIManager deauthenticateWithCompletion:^(BOOL success, NSError *error) {
        NSLog(@"Deauthenticated...");
    }];
}
- (void)addNewConversation
{
    [self.APIManager loadContactsWithCompletion:^(NSArray *contacts, NSError *error) {
        OTContactListController *contactView = [[OTContactListController alloc] initWithLayerClient:self.layerClient apiManager:self.APIManager contacts:contacts];
        [self.navigationController pushViewController:contactView animated:YES];
    }];
}

@end
