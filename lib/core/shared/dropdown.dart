import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

class Drobdown extends StatefulWidget {
  final String? title;
  final List<SelectedListItem> listdata;
  final TextEditingController dropdownSelectedName;
  final TextEditingController dropdownSelectedID;

  const Drobdown(
      {super.key,
      required this.title,
      required this.listdata,
      required this.dropdownSelectedName,
      required this.dropdownSelectedID});

  @override
  State<Drobdown> createState() => _DrobdownState();
}

class _DrobdownState extends State<Drobdown> {
  void showDrobdownSearch() {
    DropDownState(
      DropDown(
        bottomSheetTitle: Text(
          widget.title!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: widget.listdata ?? [],
        selectedItems: (List<dynamic> selectedList) {
          SelectedListItem selectedListItem = selectedList[0];
          widget.dropdownSelectedName.text = selectedListItem.name;
          widget.dropdownSelectedID.text = selectedListItem.value!;
        },
      ),
    ).showModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.dropdownSelectedName,
      cursorColor: Colors.black,
      onTap: () {
        FocusScope.of(context).unfocus();
        showDrobdownSearch();
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black12,
        contentPadding:
            const EdgeInsets.only(left: 8, bottom: 0, top: 0, right: 15),
        hintText: widget.dropdownSelectedName.text == ""
            ? widget.title
            : widget.dropdownSelectedName.text,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
