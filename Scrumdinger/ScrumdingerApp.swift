//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Trung Kiên Nguyễn on 3/5/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
