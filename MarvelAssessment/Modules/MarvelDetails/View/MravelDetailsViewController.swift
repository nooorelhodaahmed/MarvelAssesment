//
//  MravelDetailsViewController.swift
//  MarvelAssessment
//
//  Created by norelhoda on 25/02/2024.
//

import UIKit

class MravelDetailsViewController: UIViewController {

    //MARK: - Proporties
    
    @IBOutlet weak var collectionView :UICollectionView!
    @IBOutlet weak var marvelImage : UIImageView!
    @IBOutlet weak var marvelName : UILabel!
    @IBOutlet weak var marvelDescription:UILabel!
    @IBOutlet weak var backButton : UIButton!
    
    var  avengers  = [UIImage]()
    var id :String = ""
    private let identifier = "DetailsViewCollectionViewCell"

    //MARK: - LifeCycle
    
    init(id:String) {
        self.id = id 
        super.init(nibName: "MravelDetailsViewController", bundle: .main)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print(id)
        setUpCollectionView()
    }
    
    //MARK: - LifeCycle
    
    
    
    func setUpCollectionView(){
        avengers.append(UIImage(named:"Avengers1")!)
        avengers.append(UIImage(named:"avengers2")!)
        avengers.append(UIImage(named:"avengers3")!)
        avengers.append(UIImage(named:"Avengers4")!)
        avengers.append(UIImage(named:"avengers6")!)
        avengers.append(UIImage(named:"Avengers1")!)
        avengers.append(UIImage(named:"avengers2")!)
        avengers.append(UIImage(named:"avengers3")!)
        avengers.append(UIImage(named:"Avengers4")!)
        avengers.append(UIImage(named:"avengers6")!)
        
        collectionView.register(UINib.init(nibName: identifier, bundle: nibBundle), forCellWithReuseIdentifier: identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        backButton.addTarget(self, action: #selector(backBtnTapped), for: .touchUpInside)
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
    }
}

//MARK: - collectionView Data

extension MravelDetailsViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return avengers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailsViewCollectionViewCell", for: indexPath) as! DetailsViewCollectionViewCell
        cell.image.image = avengers[indexPath.row]
        cell.descriptionLabel.text = "Ant-Man & wasp()2010"
        cell.selectionButton.addTarget(self, action: #selector(eventIsSelected), for: .touchUpInside)
        return cell
    }
    
    @objc func eventIsSelected(){
        let vc = MarvelPopUpViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
   
    @objc func backBtnTapped(){
        self.navigationController?.popViewController(animated: true)
    }

}
