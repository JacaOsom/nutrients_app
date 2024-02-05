import 'package:flutter/material.dart';
import 'package:nutrients_app/models/note.dart';
import 'package:nutrients_app/services/note_database.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key, this.note}) : super(key: key);

  final Note? note;

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    if (note != null) {
      titleController.text = note!.title;
      descriptionController.text = note!.description;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(note == null ? 'Dodaj notatkę' : 'Edytuj notatkę'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: TextFormField(
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                controller: titleController,
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: 'Tytuł',
                    labelText: 'Wpisz tytuł notatki',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.75,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ))),
              ),
            ),
            TextFormField(
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
              controller: descriptionController,
              decoration: const InputDecoration(
                  hintText: 'Pisz co chcesz',
                  labelText: 'Opis notatki',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0.75,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ))),
              keyboardType: TextInputType.multiline,
              onChanged: (str) {},
              maxLines: 5,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () async {
                      final title = titleController.value.text;
                      final description = descriptionController.value.text;

                      if (title.isEmpty || description.isEmpty) {
                        return;
                      }

                      final Note model = Note(
                          title: title, description: description, id: note?.id);
                      if (note == null) {
                        await DatabaseHelper.addNote(model);
                      } else {
                        await DatabaseHelper.updateNote(model);
                      }

                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 0.75,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )))),
                    child: Text(
                      note == null ? 'Zapisz' : 'Edytuj',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
