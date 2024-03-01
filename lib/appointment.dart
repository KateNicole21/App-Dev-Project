import 'package:flutter/material.dart';


class AppointmentPage extends StatefulWidget {
  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController instructionsController = TextEditingController();
  String appointmentDetails = '';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime)
      setState(() {
        selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule Appointment'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                decoration: BoxDecoration(border: Border.all(color: Colors.black,),
                borderRadius: BorderRadius.circular(10.0)
                ),
                child: const Text( 
                  'Appointment Date',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    '${selectedDate.toLocal()}'.split(' ')[0],
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: const Text('Select Date'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Select Time:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    selectedTime.format(context),
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => _selectTime(context),
                    child: const Text('Select Time'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Additional Instructions:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: instructionsController,
                maxLines: 3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // You can implement your appointment scheduling logic here
                  setState(() {
                    appointmentDetails =
                        'Date: ${selectedDate.toLocal()} - Time: ${selectedTime.format(context)} - Instructions: ${instructionsController.text}';
                  });
                },
                child: const Text('Schedule Appointment'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Appointment Details:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Text(
                appointmentDetails,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
