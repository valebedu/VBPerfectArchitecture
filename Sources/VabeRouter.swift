//
//  VabeRouter.swift
//  VabeArchitecture
//
//  Created by Valentin Bercot on 12/02/2017.
//
//

import PerfectHTTP

public protocol VabeRouter
{
    var endpoint: String { get }
    var routes: Routes { get }
}
