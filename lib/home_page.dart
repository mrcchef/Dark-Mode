import 'package:flutter/material.dart';
import 'package:flutter_theming/app_theme_state.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: InkWell(
              onTap: () {
                Provider.of<AppThemeState>(context, listen: false)
                    .toggleState();
              },
              child: Icon(
                Icons.track_changes_rounded,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Text(
                    "Today",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Spacer(),
                  Icon(
                    Icons.add_circle,
                    size: 30,
                  ),
                ],
              ),
            ),
            Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Theme.of(context).colorScheme.primary,
              child: ListTile(
                leading: Icon(
                  Icons.phone_callback_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Text(
                  'Abhijeet Tamrakar',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                subtitle: Text(
                  '5:00 PM',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                trailing: Icon(
                  Icons.check_circle,
                  color: Theme.of(context).colorScheme.secondaryVariant,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
