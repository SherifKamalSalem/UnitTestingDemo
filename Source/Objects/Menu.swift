//  Created by Sherif Kamal on 2/15/20.
//  Copyright © 2020 Sherif Kamal. All rights reserved.
//
import Foundation

struct Menu {
	private var data = [MenuItem]()
	
	var count:Int {
		return data.count
	}
	
	init() {
		loadDefaultMenu()
	}
	
	mutating func loadDefaultMenu() {
		if let path = Bundle.main.path(forResource: "Menu", ofType: "plist") {
			loadMenu(path: path)
		} else {
			assertionFailure("Could not load default menu")
		}
	}
	
	mutating func loadMenu(path: String) {
		if let arr = NSArray(contentsOfFile: path) {
			for row in arr {
				if let dic = row as? [String:String] {
					let itm = MenuItem(dictionary: dic)
					data.append(itm)
				}
			}
		}
	}
	
	func itemAt(row: Int) -> MenuItem? {
		return data[row]
	}
}
