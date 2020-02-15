//  Created by Sherif Kamal on 2/15/20.
//  Copyright © 2020 Sherif Kamal. All rights reserved.
//
import UIKit

class InfoViewController: UIViewController {
	@IBOutlet private weak var txtInfo: UITextView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		loadContent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	func loadContent() {
		let url = "https://raw.githubusercontent.com/FahimF/Test/master/DogYears-Info.rtf"
		HTTPClient.shared.get(url: url) {(data, error) in
			// Was there an error?
			if let error = error {
				NSLog("Error: \(error)")
				return
			}
			// No error, was there data?
			if let data = data {
				guard let txt = try? NSAttributedString(data: data, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf], documentAttributes: nil) else { return }
				DispatchQueue.main.async {
					self.txtInfo.attributedText = txt
				}
			}
		}
	}
}
