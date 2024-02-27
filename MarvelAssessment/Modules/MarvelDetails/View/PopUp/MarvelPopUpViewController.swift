//
//  MarvelPopUpViewController.swift
//  MarvelAssessment
//
//  Created by norelhoda on 25/02/2024.
//

import UIKit

class MarvelPopUpViewController: UIViewController {

    @IBOutlet weak var closeButton : UIButton!
    @IBOutlet weak var image : UIImageView!

    
    init() {
        super.init(nibName: "MarvelPopUpViewController", bundle: .main)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        closeButton.addTarget(self, action: #selector(closeButtonIsTapped), for: .touchUpInside)
    }
    
    @objc func closeButtonIsTapped(){
        self.dismiss(animated: true)
    }
}
