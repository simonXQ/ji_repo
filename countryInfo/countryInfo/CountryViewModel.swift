//
//  CountryViewModel.swift
//  countryInfo
//
//  Created by Simon Ji on 2018/7/23.
//  Copyright © 2018年 Simon Ji. All rights reserved.
//

import Foundation


class CountryViewModel{
    
    var country = [Country]()
    
    func getCountryListOfArr(completion: @escaping ()->Void){
        WebServerApiHandler.sharedInstance.getCountryInfo { (countryListOfArr, error) in
            self.country = countryListOfArr
            completion()
        }
    }
}
