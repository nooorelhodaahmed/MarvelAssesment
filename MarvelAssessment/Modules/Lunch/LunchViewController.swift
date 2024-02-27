//
//  LunchViewController.swift
//  MarvelAssessment
//
//  Created by norelhoda on 23/02/2024.
//

import UIKit

class LunchViewController: UIViewController{
     
    var logoImageView:UIImageView  = {
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "marvel-logo-2D20B064BD-seeklogo.com")
        return imageView
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(logoImageView)
        DispatchQueue.main.asyncAfter(deadline:.now()+1.5, execute:{
            self.performSegue(withIdentifier: "segue", sender: self)
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let destVC = segue.destination as! HomeViewController
                destVC.modalPresentationStyle = .fullScreen
            }
        })
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        logoImageView.center = view.center
    
        DispatchQueue.main.asyncAfter(deadline:.now()+0.5){
            self.animation()
        }
    }
    
     func animation(){
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 1.5
            let diffx = size - self.view.frame.width
            let diffy = self.view.frame.height - size
            
            self.logoImageView.frame = CGRect(x: -(diffx/2), y: diffy/2, width: size, height: size)
            self.logoImageView.alpha = 0
        })
        
    }
}
