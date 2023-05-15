import 'dart:io';

import 'package:flutter/material.dart';

import '../../models/category_model.dart';
import '../../services/image_services.dart';

class ComplaintFormArguments {
  final CategoryType categoryType;

  ComplaintFormArguments({required this.categoryType});
}

class ComplaintFormScreen extends StatefulWidget {
  final CategoryType categoryType;

  const ComplaintFormScreen({Key? key, required this.categoryType}) : super(key: key);

  @override
  State<ComplaintFormScreen> createState() => _ComplaintFormScreenState();
}

class _ComplaintFormScreenState extends State<ComplaintFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  File? imageFile;

  final TextEditingController _districtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complaint Form'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(getCategoryName(widget.categoryType)),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _districtController,
                  decoration: const InputDecoration(labelText: 'District'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _districtController,
                  decoration: const InputDecoration(labelText: 'Ward Number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _districtController,
                  decoration: const InputDecoration(labelText: 'Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                // gps
                const SizedBox(height: 24),
                InkWell(
                  onTap: () async {
                    imageFile = await ImageServices.pickImage();
                    setState(() {});
                  },
                  child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: _buildImage()),
                ),
                const SizedBox(height: 24),

                const SizedBox(height: 24),
                TextFormField(
                  controller: _districtController,
                  decoration: const InputDecoration(labelText: 'Description'),
                  maxLines: 5,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildImage() {
    if (imageFile == null) {
      return const Center(
        child: Text('Upload product photo',
            style: TextStyle(fontSize: 16, color: Colors.white)),
      );
    } else {
      return Image.file(imageFile!);
    }
  }
}
