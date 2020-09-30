//
//  constModel.swift
//  
//
//  Created by HappySanz Tech on 17/09/20.
//

import Foundation
import UIKit

class constModel: NSObject {
    
     var paguthi_name: String?
   
     // MARK: Instance Method
     func loadFromDictionary(_ dict: [String: AnyObject])
     {
          if let data = dict["paguthi_name"] as? String {
             self.paguthi_name = data
          }
        
    }
    
    // MARK: Class Method
    class func build(_ dict: [String: AnyObject]) -> constModel {
        let constituentModel = constModel()
        constituentModel.loadFromDictionary(dict)
        return constituentModel
    }

}
