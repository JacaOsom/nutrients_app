import 'package:flutter/material.dart';
import 'package:nutrients_app/models/note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem(
      {Key? key,
      required this.note,
      required this.onTap,
      required this.onLongPress})
      : super(key: key);

  final Note note;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    note.title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Text(
                  note.description,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
