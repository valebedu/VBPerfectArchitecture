//
//  VabeStoreOption.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

/**
 Enum used to represent list request options.
 
 - authors: Valentin Bercot
 */
public enum VabeStoreOption
{
    case order(by: String, ascending: Bool)
    case limit(by: UInt8)
    case page(by: UInt64)
}
