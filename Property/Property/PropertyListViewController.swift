//
//  PropertyListViewController.swift
//  Property
//
//  Created by yonradee limsawat on 5/2/2025.
//

import UIKit

class PropertyListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var StudentInfoView: UILabel!
    
    var model = PropertyModel()
    var selectedType: PropertyType?
    var watchlist: [Property] = []

    override func viewDidLoad() {
        
        StudentInfoView.text = "Student 1: Quang Vinh Nguyen - 12256421\nStudent 2:Yonradee Limsawat - 12268928"
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        selectedType = .all // Set default type
        
        // Add double tap gesture to the table view once
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap(_:)))
        doubleTapGesture.numberOfTapsRequired = 2
        tableView.addGestureRecognizer(doubleTapGesture)
        
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPropertyDetail" {
            if let indexPath =  tableView.indexPathForSelectedRow {
                let property =  model.properties[indexPath.row]
                let detailVC =  segue.destination as? PropertyDetailViewController
                detailVC?.property = property
            }
        } else if segue.identifier == "AddProperty" {
            let navVC = segue.destination as? UINavigationController
            let addVC = navVC?.viewControllers.first as? AddPropertyViewController
            addVC?.delegate = self
        }
    }
    
    @IBAction func didChangeFilter(_ sender:UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            selectedType = .all
        case 1:
            selectedType = .house
        case 2:
            selectedType = .unit
        case 3:
            selectedType = .land
        default:
            break
        }
        print("Selected Filter: \(selectedType!)")
        tableView.reloadData()
    }
}
extension  PropertyListViewController: UITableViewDataSource {
    
    // Number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = model.properties(forType: selectedType).count
        print("Number of rows in table view: \(count)")
        return count
    }
    
    // Creating the actual cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PropertyCell", for: indexPath)
        
        // Fetch the property
        let property = model.properties(forType: selectedType)[indexPath.row]
        
        // Display property type
        cell.textLabel?.text = property.type.rawValue
        // Display address below type
        cell.detailTextLabel?.text = property.address
        // Set the image
        cell.imageView?.image = UIImage(named: property.thumbnailName)
        
        return cell
    }
}

extension  PropertyListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    @objc func handleDoubleTap(_ sender: UITapGestureRecognizer) {
        let touchPoint = sender.location(in: tableView)
        if let indexPath = tableView.indexPathForRow(at: touchPoint) {
            let property = model.properties(forType: selectedType)[indexPath.row]
            
            // Prevent duplicates in the watchlist
            if !watchlist.contains(where: { $0.address == property.address }) {
                watchlist.append(property)
                print("Property added to Watchlist: \(property.address)")
                updateWatchlist()
            } else {
                print("Property is already in the Watchlist!")
            }
        }
    }
}
extension PropertyListViewController: AddPropertyDelegate {
    func add(property: Property) {
        model.add(property: property)
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        print("Property added. Total properties: \(model.properties.count)")
    }
}
extension PropertyListViewController {
    func updateWatchlist() {
        if let watchVC = self.tabBarController?.viewControllers?[1] as? WatchViewController {
            watchVC.watchlist = self.watchlist

            DispatchQueue.main.async {
                watchVC.watchlistTableView?.reloadData()
            }
        }
    }
}
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
