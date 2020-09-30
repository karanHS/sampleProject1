//
//  costPresenter.swift
//  
//
//  Created by HappySanz Tech on 17/09/20.
//

import Foundation
import UIKit

struct constData {
    
    let paguthi_name : String
    
}

protocol constituentView: NSObjectProtocol {
    func startLoading()
    func finishLoading()
    func setconst(constituent: [constData])
    func setEmpty(errorMessage:String)
}

class constPresenter: NSObject {

    private let constService: constService
    weak private var constview : constituentView?

    init(constService:constService) {
        self.constService = constService
    }
    
    func attachView(view:constituentView) {
        constview = view
    }
    
    func detachView() {
        constview = nil
    }
    
    func getconst(constituency_id : String) {
          self.constview?.startLoading()
          constService.callAPIconst(
            constituency_id: constituency_id, onSuccess: { (staff) in
            self.constview?.finishLoading()
                if (staff.count == 0) {
                } else {
                  let mappedUsers = staff.map {
                    return constData(paguthi_name: "\($0.paguthi_name ?? "")")
                     }
                    self.constview?.setconst(constituent: mappedUsers)
                }
            },
              onFailure: { (errorMessage) in
                  self.constview?.finishLoading()
                  self.constview?.setEmpty(errorMessage: errorMessage)

               }
          )
     }
}
