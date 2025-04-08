import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';

class DraggableEditableList extends StatefulWidget {
  @override
  _DraggableEditableListState createState() => _DraggableEditableListState();
}

class _DraggableEditableListState extends State<DraggableEditableList> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  int? editingIndex;
  TextEditingController _controller = TextEditingController();
  List<bool> checkedStatus = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          if (newIndex > oldIndex) newIndex--;
          setState(() {
            final item = items.removeAt(oldIndex);
            final checked = checkedStatus.removeAt(oldIndex);
            items.insert(newIndex, item);
            checkedStatus.insert(newIndex, checked);
          });
        },
        children: List.generate(items.length, (index) {
          return ListTile(
            key: ValueKey(items[index]),
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ReorderableDragStartListener(
                  index: index,
                  child: Icon(Icons.drag_handle, color: Colors.blueGrey),
                ),
                Checkbox(
                  value: checkedStatus[index],
                  onChanged: (bool? value) {
                    setState(() {
                      checkedStatus[index] = value ?? false;
                    });
                  },
                ),
              ],
            ),
            title: editingIndex == index
                ? TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: primarycolor))),
                    controller: _controller,
                    autofocus: true,
                    onSubmitted: (value) {
                      setState(() {
                        items[index] = value;
                        editingIndex = null;
                      });
                    },
                  )
                : Text(items[index]),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  editingIndex = index;
                  _controller.text = items[index];
                });
              },
              icon: Icon(
                Icons.edit,
                color: primarycolor,
              ),
            ),
          );
        }),
      ),
    );
  }
}
