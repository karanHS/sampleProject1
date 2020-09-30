//
//  dashBoardService.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 14/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import Foundation

import UIKit

class StaffService: NSObject {
    
    public func callAPIStaff(constituency_id : String, onSuccess successCallback: ((_ staffModel: [StaffModel]) -> Void)?,onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
        APIManager.instance.callAPIStaff(
            constituency_id: constituency_id,  onSuccess: { (staffModel) in
                successCallback?(staffModel)
            },
            onFailure: { (errorMessage) in
                failureCallback?(errorMessage)
            }
        )
    }

}
