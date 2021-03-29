import 'package:diet_app/core/base/view/base_view.dart';
import 'package:diet_app/core/widget/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      appBar: AppBar(
        title: Text(
          'edit_profile'.tr,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      viewModel: null,
      onPageBuilder: (context, value) => const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: double.infinity,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppCircularImage(radius: 40),
              TextButton(
                onPressed: () {},
                child: Text(
                  'change_pp'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.blue),
                ),
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "name_surname".tr,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'name_cannot_be_empty'.tr;
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: "status".tr,
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                maxLines: 3,
                minLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'status_cannot_be_empty'.tr;
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('save'.tr,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
