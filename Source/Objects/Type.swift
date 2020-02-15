//  Created by Sherif Kamal on 2/15/20.
//  Copyright © 2020 Sherif Kamal. All rights reserved.
//
import Foundation

struct Type {
	var tag = 0
	var years = 0.0
	var emoji = ""
	
	static func typeFor(tag: Int) -> Type {
		var t = Type()
		t.tag = tag
		if tag == 100 {
			// Dog
			t.years = 4
			t.emoji = "🐶"
		} else if tag == 101 {
			// Cat
			t.years = 3
			t.emoji = "😸"
		} else if tag == 102 {
			// Chicken
			t.years = 5
			t.emoji = "🐔"
		} else if tag == 103 {
			// Human
			t.years = 1
			t.emoji = "👨🏼"
		}
		return t
	}
}
