//
//  OTChatView.h
//  LayerSample
//
//  Created by Jonny Burger on 02.08.14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <LayerKit/LayerKit.h>
#import <EZAudio/EZAudio.h>

@interface OTChatView : UITableViewController <EZMicrophoneDelegate> {
    LYRConversation *_conv;
    NSDictionary *_lyrics;
}
- (id)initWithConversation:(LYRConversation *)conversation lyrics:(NSDictionary *)lyrics;
@property (nonatomic,strong) EZMicrophone *microphone;
@end
