//
//  HomeViewController.swift
//  Tes SPE
//
//  Created by Nusantara Card Semesta on 06/11/20.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tabelHome: UITableView!
    var Img = ["saffron-saffron-strands-kitchen-cook","wallpaperbetter.com_1920x1080","wallpaperflare.com_wallpaper"]
    var textdetail = ["SAFFRON","ZAITUN","BUAH TIN"]
    
    var cektable = [cekTable]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabelHome.dataSource = self
        self.tabelHome.delegate = self
        setTable()
    }
    
    func setTable(){
        for i in Img {
            self.cektable.append(cekTable(i,i))
        }
        self.tabelHome.reloadData()
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return cektable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = cektable[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableData") as! tableData
        cell.setData(data)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }

}
