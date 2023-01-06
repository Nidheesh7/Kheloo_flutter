import 'package:flutter/material.dart';
import 'package:kheloo/features/utils/styles.dart';

class LangDialog extends StatelessWidget {
  const LangDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.amber)),
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  'Select Lanugage',
                  style: tsS18W500,
                )),
                InkWell(
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(15),
                itemCount: langList.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      langList[index],
                      textAlign: TextAlign.center,
                      style: tsS16W500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<String> langList = [
  'English',
  'Hindi',
  'Italin',
  'Malayalam',
  'Latin',
  'Malay',
  'Mara',
  'Napali',
  'English',
  'Hindi',
  'Italin',
  'Malayalam',
  'Latin',
  'Malay',
  'Mara',
  'Napali',
];
