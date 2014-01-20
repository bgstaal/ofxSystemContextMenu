#include "ofxSystemContextMenu.h"
#include "ofApp.h"

ofxSystemContextMenu::ofxSystemContextMenu()
{
#ifdef TARGET_OSX
	_cocoaMenu = [[ofxSystemContextMenuCocoa alloc] init];
#endif
}

ofxSystemContextMenu::~ofxSystemContextMenu()
{
	
}

void ofxSystemContextMenu::addItem(string name)
{
#ifdef TARGET_OSX
	NSString *nsName = [NSString stringWithCString:name.c_str() encoding:NSUTF8StringEncoding];
	[_cocoaMenu addItem: nsName];
#endif
}

void ofxSystemContextMenu::show()
{
#ifdef TARGET_OSX
	NSWindow * window = (NSWindow * )ofGetCocoaWindow();
    [NSMenu popUpContextMenu:_cocoaMenu.menu withEvent:[NSApp currentEvent] forView:window.contentView];
#endif
}