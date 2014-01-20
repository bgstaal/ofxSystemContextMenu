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
	[item release];
}

- (void)itemSelected:(id)sender
{
	NSMenuItem *item = (NSMenuItem *)sender;
	NSLog(@"Item selected: %@", item.title);
}

@end
