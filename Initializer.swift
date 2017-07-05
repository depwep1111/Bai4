//
//  Initializer.swift
//  Bai4
//
//  Created by Cntt06 on 7/5/17.
//  Copyright © 2017 Cntt06. All rights reserved.
//

import Foundation
class A {
    let pro1: String
    let pro2: String
    let pro3: Bool
    init(pro1: String,pro2: String,pro3: Bool) {
        self.pro1 = pro1
        self.pro2 = pro2
        self.pro3 = pro3
    }
    convenience init(pro1: String){
        self.init(pro1: pro1,pro2: "Thanh",pro3: true)
    }
}
class B: A{
    let pro4: String
    init(pro1: String,pro2: String,pro3: Bool,pro4: String) {
        self.pro4 = pro4;
        super.init(pro1: pro1, pro2: pro2, pro3: pro3)
    }
    convenience init(pro2: String){
        self.init(pro1: "", pro2: pro2, pro3: false, pro4: "Ha Noi")
    }
}
class C: B{
    let pro5: String
    var pro6: String?
    init(pro1: String,pro2: String,pro3: Bool,pro4: String,pro5: String){
        self.pro5 = pro5
        super.init(pro1: pro1, pro2: pro2, pro3: pro3, pro4: pro4)
    }
    convenience init(pro1: String){
        self.init(pro1: pro1, pro2: "Thanh", pro3: true, pro4: "HCM", pro5: "ThuDuc")
    }
}
class D: C{
    var pro7: Int?
    init(pro1: String,pro2: String,pro3: Bool,pro4: String,pro5: String, pro7: Int?) {
        self.pro7 = pro7
        super.init(pro1: pro1, pro2: pro2, pro3: pro3, pro4: pro4, pro5: pro5)
    }
    convenience init(pro7: Int?){
        self.init(pro1: "Tran", pro2: "Thanh", pro3: true, pro4: "HCM", pro5: "Thu Duc", pro7: nil)
    }
}
