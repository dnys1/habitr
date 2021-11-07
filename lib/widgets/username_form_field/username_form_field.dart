import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitr/services/api_service.dart';
import 'package:habitr/widgets/username_form_field/username_form_field_viewmodel.dart';
import 'package:provider/provider.dart';

class UsernameFormField extends StatelessWidget {
  const UsernameFormField({
    this.onChanged,
    this.controller,
    this.onUpdateRequestFuture,
    this.validator,
    Key? key,
  })  : assert(
          (onChanged != null || controller != null) &&
              (onChanged == null || controller == null),
          'Either onChanged or controller must be provided, but not both.',
        ),
        super(key: key);

  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final void Function(Future<void>)? onUpdateRequestFuture;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        final apiService = Provider.of<ApiService>(context, listen: false);
        return UsernameFormFieldViewModel(
          apiService: apiService,
          controller: controller,
          onUpdateRequestFuture: onUpdateRequestFuture,
        );
      },
      builder: (context, child) {
        return _UsernameFormFieldView(
          Provider.of(context),
          onChanged: onChanged,
          controller: controller,
          validator: validator,
        );
      },
    );
  }
}

class _UsernameFormFieldView extends StatelessWidget {
  const _UsernameFormFieldView(
    this.viewModel, {
    required this.onChanged,
    required this.controller,
    this.validator,
    Key? key,
  }) : super(key: key);

  static const _usernameSuffixRadius = 12.0;

  final UsernameFormFieldViewModel viewModel;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  Widget? get usernameSuffix {
    if (viewModel.username.isEmpty) {
      return null;
    }
    if (viewModel.usernameExistsLoading) {
      return const CupertinoActivityIndicator(radius: _usernameSuffixRadius);
    }
    if (!viewModel.usernameExists) {
      return const Icon(
        Icons.check,
        color: Colors.green,
        size: _usernameSuffixRadius * 2,
      );
    }
    return const Icon(
      Icons.close,
      color: Colors.red,
      size: _usernameSuffixRadius * 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged == null
          ? null
          : (String username) {
              viewModel.setUsername(username);
              onChanged!(username);
            },
      validator: validator ?? viewModel.validateUsername,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: 'Username',
        prefixIcon: const Icon(Icons.person),
        suffix: usernameSuffix != null
            ? SizedBox(
                width: _usernameSuffixRadius * 2,
                height: _usernameSuffixRadius * 2,
                child: usernameSuffix,
              )
            : null,
      ),
    );
  }
}
