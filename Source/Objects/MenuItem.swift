//  Created by Sherif Kamal on 2/15/20.
//  Copyright © 2020 Sherif Kamal. All rights reserved.
//
import Foundation

struct MenuItem {
	var title = "Menu Item"
	
	init(dictionary:[String:String]) {
		if let title = dictionary["title"] {
			self.title = title
		}
	}
}
