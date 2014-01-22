#pragma once

#include "ofConstants.h"
#include "ofTypes.h"
#include "ofEvents.h"
#include "ofxSystemContextMenuAbstract.h"
#include "ofxSystemContextMenuItem.h"
#include <string>
#include <vector>

#ifdef TARGET_OSX
	#include "ofxSystemContextMenuCocoa.h"
#endif


class ofxSystemContextMenuEventArgs : public ofEventArgs
{
	public:
		ofxSystemContextMenuItem *item;
};

class ofxSystemContextMenu : public ofxSystemContextMenuAbstract
{
	public:
	
		ofEvent<ofxSystemContextMenuEventArgs> itemSelected;
	
		ofxSystemContextMenu();
		~ofxSystemContextMenu();
		ofxSystemContextMenuItem *addItem(string name);
		void show();
		virtual void itemSelectedCallback(int index);
	
	private:
	
		vector<ofxSystemContextMenuItemPtr> _menuItems;
	
		#ifdef TARGET_OSX
			ofxSystemContextMenuCocoa *_cocoaMenu;
		#endif
		
};