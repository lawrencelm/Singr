HackLayer iOS Starter Application
================
The HackLayer starter project provides basic login/signup and authentication functionality. Once run, this app provides a user interface and logic to authenticate it's Layer client against a hosted backend provided by Layer. It also provides basic contacts/address book functionality.

#Getting Started

### Install Xcode

1. Visit the Mac App Store and [Install Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12).
2. Download and install the Xcode app to your Applications folder.

##Accessing this Repo
To clone this repo, run this code in the terminal: 

    git clone https://github.com/layerhq/layer-hack-ios.git

##Cocoapods Installation
The recommended path for installing the Layer SDK is with [CocoaPods](http://cocoapods.org/). CocoaPods provides a simple, versioned dependency management system that automates the tedious and error prone aspects of manually configuring libraries and frameworks. You can add LayerKit to your project via CocoaPods by doing the following (if you already have CocoaPods installed, you can skip the first two lines):

```sh
$ sudo gem install cocoapods
$ pod setup
$ pod repo add layer-releases git@github.com:layerhq/releases-cocoapods.git
```

Create a `Podfile` in the root of your project directory and add the following:

```ruby
pod 'LayerKit'
```

Complete the installation by executing the following in your terminal:

```sh
$ pod install
```

These instructions will setup your local CocoaPods environment for access to the Layer releases repository and import LayerKit into your project. 

##Running the application
Before you can run your app, you must enter your appID. To do this, navigate to the AppDelegate.m file in your project and insert your Layer Application ID (UUID). You can acquire this Application ID by logging into the [Layer Developer Portal](https://na-3.preview.layer.com/).

```objc
#import <LayerKit/LayerKit.h>

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	NSUUID *appID = [[NSUUID alloc] initWithUUIDString:@"INSERT-UUID-HERE"];
	LYRClient *layerClient = [LYRClient clientWithAppID:LSLayerAppID()];
	
	....
}
```

Test your installation by launching the application with your unique ID entered as shown above. 

###User Management
Each Layer sample iOS application talks to its own unique instance of the Layer sample backend. This is a Ruby on Rails application which handles user registration, user authentication, and storage of credentials. The iOS app has pre-built UI for registering and logging in users which your application can leverage or customize. 

##Project Structure
There are multiple classes included in the sample project. In `LSAppDelegate.m` locate the `presentAuthenticatedUI` method. This is called once a user succesfully authenticates with Layer. This is where you should start implementing your application's logic.

```objc
@implementation LSAppDelegate
.
.
.
- (void)presentAuthenticatedUI
{
    #warning Present UI After a user has authenticated Here
}
@end
```

##Fetching Contacts
When a user succesfully registers or authenticates through the provided UI components, all existing contacts will be persisted to disk for you via the `LSPersistenceManager` object. You can fetch your contacts from disk via the following 

```objc
NSError *error;
NSSet *users = [self.persistenceManager persistedUsersWithError:&error]]
```

##Start Hacking on Layer
Now that your app launches smoothly and connects successfuly, familiarize yourself with LayerKit - refer to the [Layer Integration Guide](https://na-3.preview.layer.com/docs/integration) and the [Layer API Reference](https://na-3.preview.layer.com/docs/api/ios).

Since you have installed the LayerKit pod, you can view the header files from the Pod section in the left side of your XCode navigation.


Good Luck hacking!
