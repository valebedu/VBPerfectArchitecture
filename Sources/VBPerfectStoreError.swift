//
//  VBPerfectStoreError.swift
//  VBPerfectArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

import Foundation

/**
 `Error` enum used to represent error cases throw by `VBPerfectStore` extended classes.
 
 - authors: Valentin Bercot
 */
public enum VBPerfectStoreError: Error
{
    case alreadyExist(identifier: String)
    case badFormat(parameter: String)
    case identifiersNotEmpty(identifiers: [String])
    case limitReached(limit: UInt8)
    case notFound(identifier: String)
    case notSingle(identifier: String)
}