//
//  AddPropertyViewController.swift
//  Property
//
//  Created by yonradee limsawat on 6/2/2025.
//

import UIKit

// Protocol for passing data back
protocol AddPropertyDelegate: AnyObject {
    func add(property:Property)
}

class AddPropertyViewController: UIViewController {

    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var addressTextView: UITextView!
    
    let addressPlaceholder = "Add Address"
    
    var delegate: AddPropertyDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set Up placeholder
        addressTextView.text = addressPlaceholder
        addressTextView.delegate = self
    }
        // Do any additional setup after loading the view.

    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        guard let typeInput = typeTextField.text, !typeInput.isEmpty,
              let propertyType = PropertyType(rawValue: typeInput.lowercased()),
              let price = priceTextField.text, !price.isEmpty,
              let address = addressTextView.text, !address.isEmpty, address != addressPlaceholder else {
            print("Error: Missing input values")
            return
        }
        let newProperty = Property(address: address, imageName: "new.jpg", thumbnailName: "new.jpg", type: propertyType, price: price)
        
        delegate?.add(property: newProperty)
        dismiss(animated: true)
        
        print("Property saved!")
    }

}

extension AddPropertyViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.tertiaryLabel {
            textView.text = nil
            textView.textColor = UIColor.label
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = addressPlaceholder
            textView.textColor = UIColor.tertiaryLabel
        }
    }
}
