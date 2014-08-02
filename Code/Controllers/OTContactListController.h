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

@interface OTContactListController : UITableViewController
@property (nonatomic, weak) NSSet *contactList;
@property (nonatomic, strong) LYRClient *layerClient;
@property (nonatomic, strong) LSAPIManager *apiMan;
-(id)initWithLayerClient:(LYRClient*)client apiManager:(LSAPIManager*)lsAPIMan;
@end
