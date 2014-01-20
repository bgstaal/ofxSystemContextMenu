#import "ofxSystemContextMenuCocoa.h"

@implementation ofxSystemContextMenuCocoa
@synthesize menu = _menu;

- (id)init
{
	self = [super init];
	
	if (self)
	{
		self.menu = [[NSMenu alloc] init];
	}
	
	return self;
}

- (void)addItem:(NSString *)name
{
	NSMenuItem *item = [[NSMenuItem alloc] initWithTitle:name action:@selector(itemSelected:) keyEquivalent:@""];
	[item setTarget:self];
	[_menu addItem:item];
	
}

- (void)itemSelected:(id)sender
{
	NSLog(@"Item selected!");
	//ofLog() << "item selected" << std::endl;
}

@end
