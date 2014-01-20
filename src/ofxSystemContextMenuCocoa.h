#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface ofxSystemContextMenuCocoa : NSObject
{
	NSMenu *_menu;
}

	@property (nonatomic, retain) NSMenu *menu;

	-(id)init;
	-(void)addItem:(NSString *)name;
	-(void)itemSelected:(id)sender;

@end
