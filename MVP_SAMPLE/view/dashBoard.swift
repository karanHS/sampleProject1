//
//  dashBoard.swift
//  MVP_SAMPLE
//
//  Created by HappySanz Tech on 12/09/20.
//  Copyright © 2020 HappySanz Tech. All rights reserved.
//

import UIKit
import SDWebImage

class dashBoard: UIViewController,UITableViewDelegate,UITableViewDataSource, StaffView {
    
    var presenter = StaffPresenter(staffService: StaffService())
    var data = [staffData]()

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.hidesBackButton = true
        self.callAPIStaff ()
    }
        
    func startLoading() {
    //
    }
        
    func finishLoading() {
    //
    }
        
    func setStaff(staff: [staffData]) {
        data = staff
        self.tableview.reloadData()
    }
        
    func setEmpty(errorMessage: String) {
    //
    }
    
    func callAPIStaff ()
    {
        presenter.attachView(view: self)
        presenter.getStaff(constituency_id: "1")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "staff", for: indexPath) as! staffsCell
        cell.name.text = data[indexPath.row].full_name
        cell.city.text = data[indexPath.row].paguthi_name
        cell.email.text = data[indexPath.row].email_id
        cell.statusLbl.text = data[indexPath.row].status
        let url = "https://happysanz.in/gmsv1/assets/users/"
        let imgUrl = data[indexPath.row].profile_pic
        cell.staffImg.sd_setImage(with: URL(string: url + imgUrl), placeholderImage: UIImage(named:""))
        return cell
    }

    @IBAction func secView(_ sender: Any) {
        self.performSegue(withIdentifier:"secView", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                 
              if (segue.identifier == "secView") {
                  _ = segue.destination as! consView
                 }
             }
}
