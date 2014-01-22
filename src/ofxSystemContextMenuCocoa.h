#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "ofxSystemContextMenuAbstract.h"

struct ofxSystemMenuWrapper;

@interface ofxSystemContextMenuCocoa : NSObject
{
	NSMenu *_menu;
	struct ofxSystemContextMenuAbstract *_ofxMenu;
}

	@property (nonatomic, retain) NSMenu *menu;
	@property (nonatomic, assign) struct ofxSystemContextMenuAbstract *ofxMenu;

	-(id)init;
	-(void)addItem:(NSMenuItem *)item;
	-(void)itemSelected:(id)sender;

@end
