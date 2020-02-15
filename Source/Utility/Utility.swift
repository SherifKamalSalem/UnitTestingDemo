//  Created by Sherif Kamal on 2/15/20.
//  Copyright © 2020 Sherif Kamal. All rights reserved.
//
import UIKit

func isPhone() -> Bool {
	let deviceIdiom = UIScreen.main.traitCollection.userInterfaceIdiom
	return deviceIdiom == UIUserInterfaceIdiom.phone
}
