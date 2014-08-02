//
//  OTContactListController.h
//  LayerSample
//
//  Created by Duc on 8/2/14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <LayerKit/LYRClient.h>

@interface OTContactListController : UITableViewController
@property (nonatomic, weak) NSSet *contactList;
@property (nonatomic, weak) LYRClient *layerClient;
@end
