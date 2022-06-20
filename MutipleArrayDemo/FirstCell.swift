//
//  FirstCell.swift
//  MutipleArrayDemo
//
//  Created by Eden on 2022/6/20.
//

import UIKit

public class FirstCell: UITableViewCell
{
    // MARK: - Methods -
    // MARK: Initial Method
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit
    {
        
    }
}

// MARK: - Confirm Protocol -

extension FirstCell: CustomCellRegistrable
{
    public static var cellNib: UINib? = nil
    
    public static var cellIdentifier: String {
        
        return "FirstCell"
    }
}
