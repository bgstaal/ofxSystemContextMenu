#include "ofxSystemContextMenu.h"
#include "ofApp.h"

#ifdef TARGET_OSX

ofxSystemContextMenu::ofxSystemContextMenu()
{
	_cocoaMenu = [[ofxSystemContextMenuCocoa alloc] init];
	_cocoaMenu.ofxMenu = this;
}

ofxSystemContextMenu::~ofxSystemContextMenu()
{
	[_cocoaMenu release];
}

ofxSystemContextMenuItem *ofxSystemContextMenu::addItem(std::string name)
{
	ofxSystemContextMenuItemPtr item(new ofxSystemContextMenuItem(name));
	[_cocoaMenu addItem: item->cocoaMenuItem];
	
	_menuItems.push_back(item);
	
	return item.get();
}

void ofxSystemContextMenu::show()
{
	NSWindow * window = (NSWindow * )ofGetCocoaWindow();
	[NSMenu popUpContextMenu:_cocoaMenu.menu withEvent:[NSApp currentEvent] forView:window.contentView];
}

void ofxSystemContextMenu::itemSelectedCallback(int index)
{
	ofxSystemContextMenuEventArgs args;
	args.item = _menuItems[index].get();
	ofNotifyEvent(itemSelected, args, this);
}

#endif