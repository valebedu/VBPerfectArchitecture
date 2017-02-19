//
//  VabeStoreDatabase.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

/**
 Defines a `VabeStore` requirements. This protocol add to `VabeStore` protocol a class name.
 
 - authors: Valentin Bercot
 */
public protocol VabeStoreDatabase: VabeStore
{
    /**
     The ressource class name.
     */
    var className: String { get }
}
