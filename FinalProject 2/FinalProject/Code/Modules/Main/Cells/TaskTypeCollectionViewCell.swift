//
//  TaskTypeCollectionViewCell.swift
//  FinalProject
//
//  Created by Yernur Makenov on 11.12.2022.
//

import UIKit

class TaskTypeCollectionViewCell: UICollectionViewCell {

    //outlets
    @IBOutlet weak var imageContainerView: UIView!
    @IBOutlet weak var typeName: UILabel!
    @IBOutlet weak var imageVIew: UIImageView!
    
    //variables
    
    
    
    //lifecycle
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        DispatchQueue.main.async{
            self.imageContainerView.layer.cornerRadius = self.imageContainerView.bounds.width / 2
        }
    }
    
    
    //function
    override class func description() -> String {
        return "TaskTypeCollectionViewCell"
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        reset()
        self.imageVIew.image = nil
    }
    
    func setupCell(taskType: TaskType, isSelected: Bool){
        self.typeName.text = taskType.typeName
        if(isSelected){
            self.imageContainerView.backgroundColor = UIColor(hex: "17b890").withAlphaComponent(0.5)
            self.typeName.textColor = UIColor.systemGray6
            self.imageVIew.tintColor = UIColor.systemGray6
            self.imageVIew.image = UIImage(systemName: taskType.symbolName, withConfiguration: UIImage.SymbolConfiguration(pointSize: 24, weight: .medium))
        }else{
            self.imageVIew.image = UIImage(systemName: taskType.symbolName, withConfiguration: UIImage.SymbolConfiguration(pointSize: 22, weight: .regular))
            reset()
        }
    }
    func reset(){
        self.imageContainerView.backgroundColor = UIColor.clear
        self.typeName.textColor = UIColor(hex: "F6A63A")
        self.imageVIew.tintColor = UIColor(hex: "F6A63A")
    }
}
