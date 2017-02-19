//
//  VabeStoreError.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

import Foundation

/**
 `Error` enum used to represent error cases throw by `VabeStore` extended classes.
 
 - authors: Valentin Bercot
 */
public enum VabeStoreError: Error
{
    case alreadyExist(id: String)
    case notFound(id: String)
    case notSingle(id: String)
}
