//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Trung Kiên Nguyễn on 3/5/24.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }

    var theme: Theme

    init(id: UUID = UUID(), title: String, attendees: [Attendee], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String

        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }

    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
        [
            DailyScrum(title: "Design",
                       attendees: [
                           Attendee(name: "Cathy"),
                           Attendee(name: "Daisy"),
                           Attendee(name: "Simon"),
                           Attendee(name: "Jonathan")
                       ],
                       lengthInMinutes: 10,
                       theme: .yellow),
            DailyScrum(title: "App Dev",
                       attendees: [
                           Attendee(name: "Katie"),
                           Attendee(name: "Gray"),
                           Attendee(name: "Euna"),
                           Attendee(name: "Luis"),
                           Attendee(name: "Darla")
                       ],
                       lengthInMinutes: 5,
                       theme: .orange),
            DailyScrum(title: "Web Dev",
                       attendees: [
                           Attendee(name: "Chella"),
                           Attendee(name: "Chris"),
                           Attendee(name: "Christina"),
                           Attendee(name: "Eden"),
                           Attendee(name: "Karla"),
                           Attendee(name: "Lindsey"),
                           Attendee(name: "Aga"),
                           Attendee(name: "Chad"),
                           Attendee(name: "Jenn"),
                           Attendee(name: "Sarah")
                       ],
                       lengthInMinutes: 5,
                       theme: .poppy)
        ]
}
