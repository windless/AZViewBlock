//
//  ViewController.swift
//  AZViewBlock
//
//  Created by Abner Zhong on 03/07/2016.
//  Copyright (c) 2016 Abner Zhong. All rights reserved.
//

import UIKit
import AZViewBlock

class ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        
        self.view.open { v in
            v.view(UILabel.self) { v in
                v.label { v in
                }
                
                v.imageView { v in
                }
                
                v.view { v in
                }
                
                v.textField { v in
                }
                
                v.tableView(.Plain) { v in
                }
                
                v.button { v in
                }
                
                v.button(.Custom) { v in
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

