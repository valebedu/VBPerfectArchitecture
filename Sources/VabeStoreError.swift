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
    case alreadyExist(identifier: String)
    case badFormat(parameter: String)
    case identifiersNotEmpty(identifiers: [String])
    case limitReached(limit: UInt8)
    case notFound(identifier: String)
    case notSingle(identifier: String)
}
