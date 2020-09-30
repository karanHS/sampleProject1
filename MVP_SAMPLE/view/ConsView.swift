//
//  secondView.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 16/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import UIKit

class consView: UIViewController,UITableViewDelegate,UITableViewDataSource,constituentView {
  
    @IBOutlet weak var tableView: UITableView!
    
    var listArr = [constData]()
    var presenter = constPresenter(constService: constService())
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.callAPIconstituent()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArr.count
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! constCell
        cell.txtlbl.text = listArr[indexPath.row].paguthi_name
        return cell
    }
       
    func startLoading() {
   //
       }
       
    func finishLoading() {
   //
       }
       
    func setEmpty(errorMessage: String) {
   //
       }
    
    func setconst(constituent: [constData]) {
          listArr = constituent
          self.tableView.reloadData()
       }
    
    func callAPIconstituent ()
    {
        presenter.attachView(view: self)
        presenter.getconst(constituency_id: "1")
    }

    
}
