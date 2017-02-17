//
//  VabeStoreError.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

import Foundation

public enum VabeStoreError: Error
{
    case alreadyExist(id: String)
    case notFound(id: String)
    case notSingle(id: String)
}
