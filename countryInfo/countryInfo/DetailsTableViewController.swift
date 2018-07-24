//
//  DetailsTableViewController.swift
//  countryInfo
//
//  Created by Simon Ji on 2018/7/16.
//  Copyright © 2018年 Simon Ji. All rights reserved.
//

import UIKit

class DetailsTableViewController: UITableViewController {
    
    var country : Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return country.count
    //    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 16
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell") as! SecondTableViewCell
        
        
        if indexPath.row == 0{
            cell.textLabel?.text = country?.Name
        }
        else if indexPath.row == 1{
            cell.textLabel?.text = country?.Alpha2Code
        }
        else if indexPath.row == 2{
            cell.textLabel?.text = country?.Alpha3Code
        }
        else if indexPath.row == 3{
            cell.textLabel?.text = country?.NativeName
        }
        else if indexPath.row == 4{
            cell.textLabel?.text = country?.Region
        }
        else if indexPath.row == 5{
            cell.textLabel?.text = country?.SubRegion
        }
        else if indexPath.row == 6{
            cell.textLabel?.text = country?.Latitude
        }
        else if indexPath.row == 7{
            cell.textLabel?.text = country?.Longitude
        }
        else if indexPath.row == 8{
            cell.detailTextLabel?.text = "Area"
            cell.textLabel?.text = country!.Area
        }
        else if indexPath.row == 9{
            cell.textLabel?.text = country!.NumericCode
        }
        else if indexPath.row == 10{
            cell.textLabel?.text = country?.NativeLanguage
        }
        else if indexPath.row == 11{
            cell.textLabel?.text = country?.CurrencyCode
        }
        else if indexPath.row == 12{
            cell.textLabel?.text = country?.CurrencyName
        }
        else if indexPath.row == 13{
            cell.textLabel?.text = country?.CurrencySymbol
        }        else if indexPath.row == 14{
            cell.textLabel?.text = country?.Flag
        }
        else if indexPath.row == 15{
            cell.textLabel?.text = country?.FlagPng
        }
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    
}
