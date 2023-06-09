import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:freelanceplus/l10n/l10n_extension.dart';
import 'package:freelanceplus/repository/client_repository.dart';
import 'package:freelanceplus/widget/form_field_decoration.dart';
import 'package:freelanceplus/widget/form_section.dart';

class ClientForm extends ConsumerWidget {
  ClientForm({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.t.newClient),
        // action button to save the client
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              if (_formKey.currentState?.saveAndValidate() ?? false) {
                debugPrint(_formKey.currentState?.value.toString());
                ref
                    .read(clientRepositoryProvider.notifier)
                    .create(
                      _formKey.currentState!.value,
                    )
                    .then((value) => Navigator.of(context).pop());
              } else {
                debugPrint(_formKey.currentState?.value.toString());
                debugPrint('validation failed');
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FormBuilder(
              key: _formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                children: [
                  //GestureDetector(
                  //  onTap: () => Navigator.of(context).pop(),
                  //  child: const Column(
                  //    children: [
                  //      CircleAvatar(
                  //        radius: 80,
                  //        child: Icon(Icons.person, size: 140),
                  //      ),
                  //      SizedBox(height: 8),
                  //      Text('Ajouter une photo'),
                  //      SizedBox(height: 8),
                  //    ],
                  //  ),
                  //),
                  FormSection(
                    title: context.t.clientFormInformations,
                    children: [
                      FormBuilderTextField(
                        name: 'company',
                        decoration: FormFieldDecoration(
                          labelText: context.t.clientFormName,
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      FormBuilderTextField(
                        name: 'address',
                        minLines: 3,
                        maxLines: 5,
                        decoration: FormFieldDecoration(
                          labelText: context.t.clientFormAddress,
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      FormBuilderTextField(
                        name: 'phone',
                        decoration: FormFieldDecoration(
                          labelText: context.t.clientFormPhone,
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      FormBuilderTextField(
                        name: 'email',
                        decoration: FormFieldDecoration(
                          labelText: context.t.clientFormEmail,
                        ),
                        validator: FormBuilderValidators.compose([]),
                      ),
                    ],
                  ),
                  FormSection(
                    title: context.t.clientFormContactPerson,
                    children: [
                      FormBuilderTextField(
                        name: 'contactPersonName',
                        decoration: FormFieldDecoration(
                          labelText: context.t.clientFormName,
                        ),
                        validator: FormBuilderValidators.compose([]),
                      ),
                      FormBuilderTextField(
                        name: 'contactPersonPhone',
                        decoration: FormFieldDecoration(
                          labelText: context.t.clientFormPhone,
                        ),
                        validator: FormBuilderValidators.compose([]),
                      ),
                      FormBuilderTextField(
                        name: 'contactPersonEmail',
                        decoration: FormFieldDecoration(
                          labelText: context.t.clientFormEmail,
                        ),
                        validator: FormBuilderValidators.compose([]),
                      ),
                    ],
                  ),
                  FormSection(
                    title: context.t.clientFormBillingAddress,
                    children: [
                      FormBuilderTextField(
                        name: 'billingAddress',
                        minLines: 3,
                        maxLines: 5,
                        decoration: FormFieldDecoration(
                          labelText: context.t.clientFormAddress,
                        ),
                        validator: FormBuilderValidators.compose([]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
