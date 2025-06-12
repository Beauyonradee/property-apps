//
//  WatchViewController.swift
//  Property
//
//  Created by yonradee limsawat on 5/2/2025.
//

import UIKit

class WatchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var watchlistTableView: UITableView!
    
    var watchlist: [Property] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        watchlistTableView.allowsSelectionDuringEditing = true

        watchlistTableView.dataSource = self
        watchlistTableView.delegate = self
        print("Watchlist loaded with \(watchlist.count) properties.")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return watchlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WatchlistCell", for: indexPath)
        let property = watchlist[indexPath.row]
        cell.textLabel?.text = property.type.rawValue
        cell.detailTextLabel?.text = property.address
        cell.imageView?.image = UIImage(named: property.thumbnailName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Open Property Detail when a row is selected
        let selectedProperty = watchlist[indexPath.row]
        print("Tapped on \(selectedProperty.address)")
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let removedProperty = watchlist.remove(at: indexPath.row)
            print("Removed from Watchlist: \(removedProperty.address)")
            
            // Remove the row with an animation
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            // Update the watchlist in PropertyListViewController
            updatePropertyListWatchlist()
        }
    }
    
    // Function to update watchlist in PropertyListViewController
    func updatePropertyListWatchlist() {
        if let propertyVC = self.tabBarController?.viewControllers?[0] as? PropertyListViewController {
            propertyVC.watchlist = self.watchlist
        }
    }
    
    // Add prepare(for segue:) method here
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPropertyDetail" {
            if let indexPath = watchlistTableView.indexPathForSelectedRow {
                let property = watchlist[indexPath.row] // Get the selected property
                let destinationVC = segue.destination as! PropertyDetailViewController
                destinationVC.property = property // Pass the property to the detail
            }
        }
    }

}
