#import "ofxSystemContextMenuCocoa.h"

@implementation ofxSystemContextMenuCocoa
@synthesize menu = _menu;
@synthesize ofxMenu = _ofxMenu;

- (id)init
{
	self = [super init];
	
	if (self)
	{
		self.menu = [[NSMenu alloc] init];
	}
	
	return self;
}

- (void)addItem:(NSMenuItem *)item
{
	[item setTarget:self];
	[_menu addItem:item];
}

- (void)itemSelected:(id)sender
{
	NSMenuItem *item = (NSMenuItem *)sender;
	NSInteger index = [_menu indexOfItem:item];
	
	if (_ofxMenu) _ofxMenu->itemSelectedCallback(index);
}

@end
