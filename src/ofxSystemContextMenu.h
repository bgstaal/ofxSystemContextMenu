#pragma once
#include "ofTypes.h"

#ifdef TARGET_OSX
	#include "ofxSystemContextMenuCocoa.h"
#endif

class ofxSystemContextMenu
{
	public:
		ofxSystemContextMenu();
		~ofxSystemContextMenu();
		void addItem(string name);
		void show();
	
	private:
		#ifdef TARGET_OSX
			ofxSystemContextMenuCocoa *_cocoaMenu;
		#endif
		
};