//
//  constService.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 17/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import Foundation

import UIKit

class constService: NSObject {
    
    public func callAPIconst(constituency_id : String, onSuccess successCallback: ((_ constModel: [constModel]) -> Void)?,onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
        APIManager.instance.callAPIconst(
            constituency_id: constituency_id,  onSuccess: { (constModel) in
                successCallback?(constModel)
            },
            onFailure: { (errorMessage) in
                failureCallback?(errorMessage)
            }
        )
    }

}
