//
//  VabeStoreOption.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 13/02/2017.
//
//

public enum VabeStoreOption
{
    case order(by: String, ascending: Bool)
    case limit(by: UInt8)
    case page(by: UInt64)
}
