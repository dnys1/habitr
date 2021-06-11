import 'package:flutter/material.dart';
import 'package:habitr/models/Category.dart';
import 'package:habitr/repos/habit_repository.dart';
import 'package:habitr/screens/add_habit/add_habit_viewmodel.dart';
import 'package:habitr/screens/habit_details/habit_details_screen.dart';
import 'package:habitr/util/transitions.dart';
import 'package:habitr/util/validators.dart';
import 'package:provider/provider.dart';

class AddHabitScreen extends StatelessWidget {
  const AddHabitScreen({Key? key}) : super(key: key);

  static final route = PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const AddHabitScreen(),
    transitionsBuilder: slideUpTransition,
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final habitRepository =
            Provider.of<HabitRepository>(context, listen: false);
        return AddHabitViewModel(
          habitRepository: habitRepository,
        );
      },
      builder: (context, child) {
        return _AddHabitScreenView(Provider.of(context));
      },
    );
  }
}

class _AddHabitScreenView extends StatelessWidget {
  const _AddHabitScreenView(this.viewModel, {Key? key}) : super(key: key);

  final AddHabitViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Habit'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox.expand(
            child: Stack(
              children: [
                Form(
                  key: viewModel.formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: viewModel.taglineController,
                          validator: createGenericValidator<String>('Tagline'),
                          decoration: const InputDecoration(
                            labelText: 'Tagline',
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          maxLines: 2,
                        ),
                        const SizedBox(height: 20),
                        DropdownButtonFormField<Category>(
                          value: viewModel.category,
                          onChanged: viewModel.onSelectCategory,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator:
                              createGenericValidator<Category>('Category'),
                          decoration: const InputDecoration(
                            labelText: 'Category',
                          ),
                          items: [
                            for (var category in Category.values)
                              DropdownMenuItem(
                                value: category,
                                child: Text(category.string),
                              ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: viewModel.detailsController,
                          decoration: const InputDecoration(
                            labelText: 'Details',
                          ),
                          maxLines: 10,
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        var habit = await viewModel.save();
                        if (habit != null) {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => HabitDetailsScreen(habit.id),
                          ));
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
