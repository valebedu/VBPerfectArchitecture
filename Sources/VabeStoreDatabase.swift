//
//  VabeStoreDatabase.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

public protocol VabeStoreDatabase: VabeStore
{
    var className: String { get }
}
