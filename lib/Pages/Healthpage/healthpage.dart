import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyHealthPage extends StatefulWidget {
  const MyHealthPage({super.key});

  @override
  State<MyHealthPage> createState() => _MyHealthPageState();
}

class _MyHealthPageState extends State<MyHealthPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  List<String> _getAgendaForDay(DateTime day) {
    // Replace with your actual logic to fetch agenda items for the selected day
    if (day.weekday == DateTime.monday) {
      return ['Doctor appointment', 'Eat Heathy Everyday'];
    } else {
      return ['Eat Heathy Everyday'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Calendar view on the left half
        TableCalendar(
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay; // update `_focusedDay` here as well
            });
          },
          onFormatChanged: (format) {
            setState(() {
              _calendarFormat = format;
            });
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
        ),
        // Agenda view on the right half
        Expanded(
          flex: 1,
          child: _selectedDay == null
              ? const Center(
                  child: Text('Select a date to see the agenda'),
                )
              : ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: _getAgendaForDay(_selectedDay!).map((event) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff128058),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(6),
                      child: Text(
                        event,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      )
                    );
                  }).toList(),
                ),
        ),
      ],
    );
  }
}
