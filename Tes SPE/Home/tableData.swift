//
//  tableData.swift
//  Tes SPE
//
//  Created by Nusantara Card Semesta on 06/11/20.
//

import UIKit

class tableData:UITableViewCell{
    @IBOutlet weak var imagev: UIImageView!
    @IBOutlet weak var data: UILabel!
    
    var cektable:cekTable!
    
    func setData(_ tableList:cekTable){
        cektable = tableList
        let image:UIImage = UIImage(named: tableList.img)!
        imagev = UIImageView(image: image)
        data.text = tableList.detail
    }
}
