id: String/Integer (optional)
Uniquely identifies the given event. Different instances of repeating events should all have the same id.

title: String
The text on an event's element

allDay: true or false (optional)
Whether an event occurs at a specific time-of-day. This property affects whether an event's time is shown. Also, in the agenda views, determines if it is displayed in the "all-day" section.

Don't include quotes around your true/false. This value is not a string!

When specifying Event Objects for events or eventSources, omitting this property will make it inherit from allDayDefault, which is normally false.

start: Date
A JavaScript Date object indicating the date/time an event begins.

When specifying Event Objects for events or eventSources, you may specify a string in IETF format (ex: "Wed, 18 Oct 2009 13:00:00 EST"), a string in ISO8601 format (ex: "2009-11-05T13:15:30Z") or a UNIX timestamp.

end: Date (optional)
A Javascript Date object indicating the date/time an event ends. As with start, you may specify it in IETF, ISO8601, or UNIX timestamp format.

If an event is all-day...

the end date is inclusive. This means an event with start Nov 10 and end Nov 12 will span 3 days on the calendar.

If an event is NOT all-day...

the end date is exclusive. This is only a gotcha when your end has time 00:00. It means your event ends on midnight, and it will not span through the next day.

url: String (optional)
A URL that will be visited when this event is clicked by the user. For more information on controlling this behavior, see the eventClick callback.