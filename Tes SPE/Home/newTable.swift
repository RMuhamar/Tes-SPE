//
//  newTable.swift
//  Tes SPE
//
//  Created by Nusantara Card Semesta on 06/11/20.
//

import UIKit

class newTable:UITableViewCell {
    @IBOutlet weak var img:UIImageView!
    @IBOutlet weak var data:UILabel!
    
    var cekTable:cekTable!
    
    func setData(_ tablelist:cekTable){
        self.cekTable = tablelist
        let image: UIImage = UIImage(named: tablelist.img)!
        img = UIImageView(image: image)
        data?.text = tablelist.detail
    }
}

