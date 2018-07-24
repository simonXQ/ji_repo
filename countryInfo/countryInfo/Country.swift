//
//  Country.swift
//  countryInfo
//
//  Created by Simon Ji on 2018/7/16.
//  Copyright © 2018年 Simon Ji. All rights reserved.
//

//import Foundation
//
//struct JSONData: Codable {
//    var countries : [Country]
//
//    enum CodingKeys: String, CodingKey {
//        case countries
//    }
//
//    init(from decoder: Decoder) throws{
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        countries = try values.decode([Country].self, forKey: .countries)
//    }
//}
//
//struct Country: Codable {
//    var Name : String
//    var Alpha2Code : String
//    var Alpha3Code: String
//    var NativeName : String
//    var Region : String
//    var SubRegion : String
//    var Latitude : String
//    var Longitude : String
//    var Area  : String
//    var NumericCode : String
//    var NativeLanguage : String
//    var CurrencyCode : String
//    var CurrencyName : String
//    var CurrencySymbol : String
//    var Flag : String
//    var FlagPng : String
//
//    enum CodingKeys: String, CodingKey {
//        case Name
//        case Alpha2Code
//        case Alpha3Code
//        case NativeName
//        case Region
//        case SubRegion
//        case Latitude
//        case Longitude
//        case Area
//        case NumericCode
//        case NativeLanguage
//        case CurrencyCode
//        case CurrencyName
//        case CurrencySymbol
//        case Flag
//        case FlagPng
//    }
//    init(from decoder: Decoder) throws{
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        Name = try values.decode(String.self, forKey: .Name)
//        Alpha2Code = try values.decode(String.self, forKey: .Alpha2Code)
//        Alpha3Code = try values.decode(String.self, forKey: .Alpha3Code)
//        NativeName = try values.decode(String.self, forKey: .NativeName)
//        Region = try values.decode(String.self, forKey: .Region)
//        SubRegion = try values.decode(String.self, forKey: .SubRegion)
//        Latitude = try values.decode(String.self, forKey: .Latitude)
//        Longitude = try values.decode(String.self, forKey: .Longitude)
//        Area = try values.decode(String.self, forKey: .Area)
//        NumericCode = try values.decode(String.self, forKey: .NumericCode)
//        NativeLanguage = try values.decode(String.self, forKey: .NativeLanguage)
//        CurrencyCode = try values.decode(String.self, forKey: .CurrencyCode)
//        CurrencyName = try values.decode(String.self, forKey: .CurrencyName)
//        CurrencySymbol = try values.decode(String.self, forKey: .CurrencySymbol)
//        Flag = try values.decode(String.self, forKey: .Flag)
//        FlagPng = try values.decode(String.self, forKey: .FlagPng)
//    }
//}
//
//



//struct JSONDATA: Codable {
//    var countries : [Country]
//
//    enum CodingKeys: String, CodingKey {
//        case countries
//    }
//
//    init(from decoder: Decoder) throws{
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        countries = try values.decode([Country].self, forKey: .countries)
//    }
//}
//
//struct Country: Codable {
//    var Name : String
//    var Alpha2Code : String
//    var Alpha3Code: String
//    var NativeName : String
//    var Region : String
//    var SubRegion : String
//    var Latitude : String
//    var Longitude : String
//    var Area  : String
//    var NumericCode : String
//    var NativeLanguage : String
//    var CurrencyCode : String
//    var CurrencyName : String
//    var CurrencySymbol : String
//    var Flag : String
//    var FlagPng : String
//
//    enum CodingKeys: String, CodingKey {
//        case Name
//        case Alpha2Code
//        case Alpha3Code
//        case NativeName
//        case Region
//        case SubRegion
//        case Latitude
//        case Longitude
//        case Area
//        case NumericCode
//        case NativeLanguage
//        case CurrencyCode
//        case CurrencyName
//        case CurrencySymbol
//        case Flag
//        case FlagPng
//    }
//    init(from decoder: Decoder) throws{
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        Name = try values.decode(String.self, forKey: .Name)
//        Alpha2Code = try values.decode(String.self, forKey: .Alpha2Code)
//        Alpha3Code = try values.decode(String.self, forKey: .Alpha3Code)
//        NativeName = try values.decode(String.self, forKey: .NativeName)
//        Region = try values.decode(String.self, forKey: .Region)
//        SubRegion = try values.decode(String.self, forKey: .SubRegion)
//        Latitude = try values.decode(String.self, forKey: .Latitude)
//        Longitude = try values.decode(String.self, forKey: .Longitude)
//        Area = try values.decode(String.self, forKey: .Area)
//        NumericCode = try values.decode(String.self, forKey: .NumericCode)
//        NativeLanguage = try values.decode(String.self, forKey: .NativeLanguage)
//        CurrencyCode = try values.decode(String.self, forKey: .CurrencyCode)
//        CurrencyName = try values.decode(String.self, forKey: .CurrencyName)
//        CurrencySymbol = try values.decode(String.self, forKey: .CurrencySymbol)
//        Flag = try values.decode(String.self, forKey: .Flag)
//        FlagPng = try values.decode(String.self, forKey: .FlagPng)
//    }
//}


/*
 struct JSONData: Codable{
 var actors : [Actor]
 
 //strandard coding
 enum CodingKeys: String, CodingKey{
 case actors
 }
 //
 init(from decoder: Decoder) throws{
 let values = try decoder.container(keyedBy: CodingKeys.self)
 actors = try values.decode([Actor].self, forKey: .actors)
 }
 }
 
 struct Actor: Codable{
 let name: String
 let description : String
 let dob: String
 let country : String
 let height: String
 let spouse: String
 let children: String
 let image: String
 
 enum CodingKeys: String, CodingKey{
 case name
 case description
 case dob
 case country
 case height
 case spouse
 case children
 case image
 
 }
 
 init(from decoder: Decoder) throws{
 let values = try decoder.container(keyedBy: CodingKeys.self)
 name = try values.decode(String.self, forKey: .name)
 description = try values.decode(String.self, forKey: .description)
 dob = try values.decode(String.self, forKey: .dob)
 country = try values.decode(String.self, forKey: .country)
 height = try values.decode(String.self, forKey: .height)
 spouse = try values.decode(String.self, forKey: .spouse)
 children = try values.decode(String.self, forKey: .children)
 image = try values.decode(String.self, forKey: .image)
 }
 
 }*/


import Foundation

struct JSONDATA: Codable {
    var Response : [Country]
    
    enum CodingKeys: String, CodingKey {
        case Response
    }
    
    init(from decoder: Decoder) throws{
        let values = try decoder.container(keyedBy: CodingKeys.self)
        Response = try values.decode([Country].self, forKey: .Response)
    }
}

struct Country: Codable {
    var Name : String
    var Alpha2Code : String
    var Alpha3Code: String
    var NativeName : String
    var Region : String
    var SubRegion : String
    var Latitude : String
    var Longitude : String
    var Area  : String?
    var NumericCode : String?
    var NativeLanguage : String
    var CurrencyCode : String
    var CurrencyName : String
    var CurrencySymbol : String
    var Flag : String
    var FlagPng : String
    
    enum CodingKeys: String, CodingKey {
        case Name
        case Alpha2Code
        case Alpha3Code
        case NativeName
        case Region
        case SubRegion
        case Latitude
        case Longitude
        case Area
        case NumericCode
        case NativeLanguage
        case CurrencyCode
        case CurrencyName
        case CurrencySymbol
        case Flag
        case FlagPng
    }
    
    init(from decoder: Decoder) throws{
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        Name = try values.decode(String.self, forKey: .Name)
        Alpha2Code = try values.decode(String.self, forKey: .Alpha2Code)
        Alpha3Code = try values.decode(String.self, forKey: .Alpha3Code)
        NativeName = try values.decode(String.self, forKey: .NativeName)
        Region = try values.decode(String.self, forKey: .Region)
        SubRegion = try values.decode(String.self, forKey: .SubRegion)
        Latitude = try values.decode(String.self, forKey: .Latitude)
        Longitude = try values.decode(String.self, forKey: .Longitude)
        //        Area = try values.decode(String.self, forKey: .Area)
        //        NumericCode = try values.decode(String.self, forKey: .NumericCode)
        NativeLanguage = try values.decode(String.self, forKey: .NativeLanguage)
        CurrencyCode = try values.decode(String.self, forKey: .CurrencyCode)
        CurrencyName = try values.decode(String.self, forKey: .CurrencyName)
        CurrencySymbol = try values.decode(String.self, forKey: .CurrencySymbol)
        Flag = try values.decode(String.self, forKey: .Flag)
        FlagPng = try values.decode(String.self, forKey: .FlagPng)
        
        if let values = try? values.decode(String.self, forKey: .Area){
            Area = String(values)
        }else{
            Area = "N/A"
        }
        
        if let values = try? values.decode(String.self, forKey: .NumericCode){
            NumericCode = String(values)
        }else{
            NumericCode = "N/A"
        }
    }
}




