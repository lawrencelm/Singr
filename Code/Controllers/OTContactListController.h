//
//  OTContactListController.h
//  LayerSample
//
//  Created by Duc on 8/2/14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <LayerKit/LYRClient.h>
#import "LSAPIManager.h"
#import "OTContactsCell.h"

@interface OTContactListController : UITableViewController
@property (nonatomic, strong) NSArray *contactList;
@property (nonatomic, strong) LYRClient *layerClient;
@property (nonatomic, strong) LSAPIManager *apiMan;
@property (weak, nonatomic) IBOutlet UIView *cell;
-(id)initWithLayerClient:(LYRClient*)client apiManager:(LSAPIManager*)lsAPIMan contacts:(NSArray *)contacts;
@end
