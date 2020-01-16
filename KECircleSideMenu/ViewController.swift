//
//  ViewController.swift
//  KECircleSideMenu
//
//  Created by Kaan Esin on 10.01.2020.
//  Copyright © 2020 Kaan Esin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var btnSideMenu: KECircleButton!
    @IBOutlet weak var viewCircle: KECircleView!
    @IBOutlet weak var constraintWidth: NSLayoutConstraint!
    @IBOutlet weak var constraintHeight: NSLayoutConstraint!
    let widthHeightBig: CGFloat = UIScreen.main.bounds.width * 600.0 / 414.0
    let widthHeightSmall: CGFloat = 60.0
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.alpha = 0
    }

    @IBAction func sideMenuClicked(_ sender: Any) {
        if btnSideMenu.tag == 0 {
            self.constraintWidth.constant = self.widthHeightBig
            self.constraintHeight.constant = self.widthHeightBig
        }
        else {
            self.constraintWidth.constant = self.widthHeightSmall
            self.constraintHeight.constant = self.widthHeightSmall
        }
        self.view.setNeedsUpdateConstraints()
        
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [.curveLinear, .allowUserInteraction, .allowAnimatedContent], animations: {
            if self.btnSideMenu.tag == 0 {
                self.viewCircle.cornerRadius = self.widthHeightBig / 2
                self.btnSideMenu.tag = 1
                self.tableView.alpha = 1
            }
            else {
                self.viewCircle.cornerRadius = self.widthHeightSmall / 2
                self.btnSideMenu.tag = 0
                self.tableView.alpha = 0
            }
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        return cell
    }
}

