//
//  MovieListViewController.swift
//  Flix
//
//  Created by Carlos Mendoza on 10/13/19.
//  Copyright © 2019 Carlos Mendoza. All rights reserved.
//

import UIKit

class MovieListViewController: UITableViewController {
    
    override func viewDidLoad() {
        tableView.register(MovieCell.self, forCellReuseIdentifier: "MovieCell")
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell",for: indexPath) as! MovieCell
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    let posterImage : PosterImageView = {
        let image = PosterImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
}

class MovieCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    let posterImage : PosterImageView = {
        let image = PosterImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    func setupUI() {
        contentView.addSubview(posterImage)
        
        posterImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        posterImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        posterImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        posterImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
        posterImage.widthAnchor.constraint(equalTo: posterImage.heightAnchor, multiplier: 500/750).isActive = true
        
        posterImage.image = UIImage(named: "joker.jpg")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
