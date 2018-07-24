//
//  WebServerApiHandler.swift
//  countryInfo
//
//  Created by Simon Ji on 2018/7/16.
//  Copyright © 2018年 Simon Ji. All rights reserved.
//

import Foundation


let apiurl = "http://countryapi.gear.host/v1/Country/getCountries"

typealias completionhandler = ([Country], Error?) ->()

class WebServerApiHandler : NSObject {
    
    private override init() {}
    static let sharedInstance = WebServerApiHandler()
    
    func getCountryInfo(completion: @escaping completionhandler){
        let urlApi = URL(string: apiurl)

        URLSession.shared.dataTask(with: urlApi!){(data, response, error) in
            
            if error == nil{
            
//                do{
//                    if let jasonResult = try JSONSerialization.jsonObject(with: data!, options: []) as?
//                        Dictionary<String, Any>{
//                        guard let arr = jasonResult["Response"] as? Array<Dictionary<String, Any>> else{
//                            return
//                        }
//
//                        var countryArr : Array<Country> = []
//
//                        for dict in arr {
//                            let country = Country(Name: dict["Name"] as! String, Alpha2Code: dict["Alpha2Code"] as! String, Alpha3Code: dict["Alpha3Code"] as! String, NativeName: dict["NativeName"] as! String, Region: dict["Region"] as! String, SubRegion: dict["SubRegion"] as! String, Latitude: dict["Latitude"] as! String, Longitude: dict["Longitude"] as! String, Area: "\(String(describing: dict["Area"]))", NumericCode: "\(String(describing: dict["NumericCode"]))", NativeLanguage: dict["NativeLanguage"] as! String, CurrencyCode: dict["CurrencyCode"] as! String, CurrencyName: dict["CurrencyName"] as! String, CurrencySymbol: dict["CurrencySymbol"] as! String, Flag: dict["Flag"] as! String, FlagPng: dict["FlagPng"] as! String)
//                            countryArr.append(country)
//
//                        }
//                        completion(countryArr, nil)
//                    }
//                }catch{
//
//                }
                
                let decoder = JSONDecoder()
                
                do{
                    let countries = try decoder.decode(JSONDATA.self, from: data!)
                    completion(countries.Response,nil)
                }catch{}
            }else{
                completion([], error)
            }
            }.resume()
    }
}
