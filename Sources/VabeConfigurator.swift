//
//  VabeConfigurator.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

public protocol VabeConfigurator
{
    func configure(controller: VabeController)
}

public extension VabeConfigurator
{
    static var sharedInstance: Self {
        return self as! Self
    }
}
