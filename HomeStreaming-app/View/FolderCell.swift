//
//  FolderCell.swift
//  HomeStreaming-app
//
//  Created by Jonathan Hirsch on 7/16/20.
//

import UIKit

class FolderCell: UICollectionViewCell {
    
    let extensionList = [".mp4", ".m4a", ".m4v", ".f4v", ".fa4", ".m4b", ".m4r", ".f4b", ".mov", ".3gp",
                         ".3gp2", ".3g2", ".3gpp", ".3gpp2", ".ogg", ".oga", ".ogv", ".ogx", ".wmv", ".wma",
                         ".webm", ".flv", ".avi", ".mpg", ".mkv"]
    let subtitleExt = ".srt"

   
    @IBOutlet weak var folderButton: FolderButton!
    @IBOutlet weak var folderName: UILabel!
    @IBOutlet weak var favoritesButton: FavoritesButton!
    
    func setup(folder: inout Item){
        
        switch folder.type {
        case .movie: fallthrough
        case .subtitle:
            configure(file: folder)
            break;
        default:
            configure(folder: folder)
            break;
        }
        
        folderButton.type = folder.type;
        folderName.text = folder.name
        folderButton.setTitle(folder.name, for: .normal)
        folderButton.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        favoritesButton.setItem(item: &folder)
        favoritesButton.set(isFavorite: folder.isFavorite)
    }
    
    func configure(folder: Item){
        folderButton.setImage(UIImage(named: "folder.png"), for: .normal)
        folderButton.setImage(UIImage(named: "folder_highlighted.png"), for: .selected)

        folderButton.isEnabled = true
    }
    
    func configure(file folder: Item){
        var imageName = "videoFile.png"
        if (folder.type == .subtitle){
            imageName = "subtitle.png"
        }

        folderButton.setImage(UIImage(named: imageName), for: .normal)
        folderButton.adjustsImageWhenDisabled = false
        
    }
}