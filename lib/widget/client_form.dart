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
        centerTitle: true,
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
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                        decoration: FormFieldDecoration(
                          hintText: context.t.clientFormName,
                          suffixIcon: IconButton(
                            onPressed: () async {
                              await Navigator.of(context).pushNamed(
                                '/contact/import',
                              );
                            },
                            icon: const Icon(Icons.contact_mail_outlined),
                          ),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      FormBuilderTextField(
                        name: 'address',
                        keyboardType: TextInputType.multiline,
                        textCapitalization: TextCapitalization.words,
                        minLines: 3,
                        maxLines: 5,
                        decoration: FormFieldDecoration(
                          hintText: context.t.clientFormAddress,
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      FormBuilderTextField(
                        name: 'phone',
                        keyboardType: TextInputType.phone,
                        decoration: FormFieldDecoration(
                          hintText: context.t.clientFormPhone,
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                      FormBuilderTextField(
                        name: 'email',
                        keyboardType: TextInputType.emailAddress,
                        decoration: FormFieldDecoration(
                          hintText: context.t.clientFormEmail,
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
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                        decoration: FormFieldDecoration(
                          hintText: context.t.clientFormName,
                        ),
                        validator: FormBuilderValidators.compose([]),
                      ),
                      FormBuilderTextField(
                        name: 'contactPersonPhone',
                        keyboardType: TextInputType.phone,
                        decoration: FormFieldDecoration(
                          hintText: context.t.clientFormPhone,
                        ),
                        validator: FormBuilderValidators.compose([]),
                      ),
                      FormBuilderTextField(
                        name: 'contactPersonEmail',
                        keyboardType: TextInputType.emailAddress,
                        decoration: FormFieldDecoration(
                          hintText: context.t.clientFormEmail,
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
                        keyboardType: TextInputType.multiline,
                        textCapitalization: TextCapitalization.words,
                        minLines: 3,
                        maxLines: 5,
                        decoration: FormFieldDecoration(
                          hintText: context.t.clientFormAddress,
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
