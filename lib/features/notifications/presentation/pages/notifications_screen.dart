import 'package:customer_nzubia_global/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:customer_nzubia_global/features/notifications/presentation/bloc/notifications_bloc.dart';
import 'package:intl/intl.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsBloc()..add(LoadNotifications()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.notificationsTitle),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () => context.read<NotificationsBloc>().add(LoadNotifications()),
                tooltip: 'Refresh',
              ),
            ),
          ],
        ),
        body: BlocBuilder<NotificationsBloc, NotificationsState>(
          builder: (context, state) {
            if (state.status == NotificationsStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.notifications.isEmpty) {
               return Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(AppLocalizations.of(context)!.noNotifications),
                     const SizedBox(height: 16),
                     ElevatedButton(
                       onPressed: () => context.read<NotificationsBloc>().add(LoadNotifications()),
                       child: Text(AppLocalizations.of(context)!.refresh),
                     ),
                   ],
                 ),
               );
            }

            return RefreshIndicator(
              onRefresh: () async {
                context.read<NotificationsBloc>().add(LoadNotifications());
                await Future.delayed(const Duration(seconds: 1));
              },
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: state.notifications.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final notif = state.notifications[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: notif.isRead ? Colors.grey[300] : Colors.blue[100],
                      child: Icon(Icons.notifications, color: notif.isRead ? Colors.grey : Colors.blue),
                    ),
                    title: Text(notif.title, style: TextStyle(fontWeight: notif.isRead ? FontWeight.normal : FontWeight.bold)),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(notif.message),
                            const SizedBox(height: 4),
                            Text(DateFormat('MMM d, h:mm a').format(notif.createdAt), style: const TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                    ),
                    onTap: () {
                        context.read<NotificationsBloc>().add(MarkNotificationAsRead(notif.id));
                        // Handle navigation based on notif.type
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
