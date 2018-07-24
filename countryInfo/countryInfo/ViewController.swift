//
//  ViewController.swift
//  countryInfo
//
//  Created by Simon Ji on 2018/7/16.
//  Copyright © 2018年 Simon Ji. All rights reserved.
//

//[ {"key": {"key": value}, {}, {}, {} }, {}, {}  ]

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var countries : Array<Country> = []
    
    var vm = CountryViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        getCountryListApi()
        vm.getCountryListOfArr {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
        //        tableView.rowHeight = UITableViewAutomaticDimension
        //        tableView.estimatedRowHeight = 100
    }
    
    
    //    func getCountryListApi()
    //    {
    //        WebServerApiHandler.sharedInstance.getCountryInfo{(countries, error) in
    //            self.countries = countries
    //            DispatchQueue.main.async {
    //                self.tableView.reloadData()
    //            }
    //        }
    //    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //      return  countries.count
        return vm.country.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CountryTableViewCell
        
//                let country = countries[indexPath.row]
        let country = vm.country[indexPath.row]
        
        cell.countryLabel?.text = country.Name
        
        //        cell.textLabel?.text = country.Name
        
        DispatchQueue.global(qos: .default).async {
            let url = URL(string: country.FlagPng)
            
            do{
                let data = try Data.init(contentsOf: url!)
                DispatchQueue.main.async {
                    cell.countryImage.image = UIImage(data: data)
                    tableView.reloadData()
                }
            }
            catch{}
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "DetailsTableViewController") as! DetailsTableViewController
        //        controller.country = countries[indexPath.row]
        controller.country = vm.country[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
    //     func tableView(tableView: UITableView,
    //                   cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
    //        let cell = tableView.dequeueReusableCell(withIdentifier: "cell"
    //                                                 ) as! CountryTableViewCell
    //
    //        let theCountry = countries[indexPath.row]
    //        cell.countryLabel.text = theCountry.Name
    //
    //        cell.countryLabel.textColor = UIColor(white: 114/255, alpha: 1)
    //        return cell
    //
    //    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

