import 'package:flutter/material.dart';
import 'package:homeservice/requestform.dart';

class ServiceProviderDashboard extends StatefulWidget {
  const ServiceProviderDashboard({super.key});

  @override
  _ServiceProviderDashboardState createState() =>
      _ServiceProviderDashboardState();
}

class _ServiceProviderDashboardState extends State<ServiceProviderDashboard> {
  final List<RepairRequest> _repairRequests = [
    // Add sample repair requests here
  ];

  void _acceptRequest(RepairRequest request) {
    // Implement logic to accept the request
  }

  void _rejectRequest(RepairRequest request) {
    // Implement logic to reject the request
  }

  void _scheduleAppointment(RepairRequest request) {
    // Implement logic to schedule an appointment
  }

  void _markAsComplete(RepairRequest request) {
    // Implement logic to mark the request as complete
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Provider Dashboard'),
      ),
      body: ListView.builder(
        itemCount: _repairRequests.length,
        itemBuilder: (context, index) {
          final request = _repairRequests[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.construction),
              title: Text(request.title),
              subtitle: Text(request.description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _acceptRequest(request);
                    },
                    child: const Text('Accept'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      _rejectRequest(request);
                    },
                    child: const Text('Reject'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      _scheduleAppointment(request);
                    },
                    child: const Text('Schedule'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      _markAsComplete(request);
                    },
                    child: const Text('Complete'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
