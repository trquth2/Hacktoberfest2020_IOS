//
//  AboutImageVC.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/21/20.
//

import UIKit

class AboutImageVC: UIViewController {
    
    let bearMan : UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "costume")
        return imageView
    }()
    
    let milk : UIImageView = {
        let imageView = UIImageView()
//        if let path = Bundle.main.path(forResource: "milk", ofType: "png"){
//            imageView.image = UIImage(contentsOfFile: path)
//        }
        imageView.image = UIImage(named: "milk")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    func configureView() {
        view.addSubview(bearMan)
        bearMan.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([bearMan.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                                     bearMan.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),])
        
        view.addSubview(milk)
        milk.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([milk.centerXAnchor.constraint(equalTo: self.bearMan.centerXAnchor),
                                     milk.topAnchor.constraint(equalTo: self.bearMan.bottomAnchor, constant: 40),
                                     milk.widthAnchor.constraint(equalToConstant: 80),
                                     milk.heightAnchor.constraint(equalToConstant: 80)])
    }
}
