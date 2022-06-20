//
//  SecondCell.swift
//  MutipleArrayDemo
//
//  Created by Eden on 2022/6/20.
//

import UIKit

public class SecondCell: UITableViewCell
{
    // MARK: - Methods -
    // MARK: Initial Method
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .systemGreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit
    {
        
    }
}

// MARK: - Confirm Protocol -

extension SecondCell: CustomCellRegistrable
{
    public static var cellNib: UINib? = nil
    
    public static var cellIdentifier: String {
        
        return "SecondCell"
    }
}
