//
//  PropertyDetailViewController.swift
//  Property
//
//  Created by yonradee limsawat on 6/2/2025.
//

import UIKit

class PropertyDetailViewController: UIViewController {

    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addressTextView: UITextView!
    
    var property: Property!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerImageView.image = UIImage(named: property.imageName)
        priceLabel.text = property.price
        addressTextView.text = formattedAddress(for: property.address)
    }
    
    // New line separator
    private func formattedAddress(for address: String) -> String {
        let items = address.split(separator: ",")
        return items.joined(separator: "\n")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
