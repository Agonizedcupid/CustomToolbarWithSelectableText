import 'package:flutter/cupertino.dart';

enum ToolBarItemControl { copy, paste, cut, selectAll }

class ToolBarItem {
  ToolBarItem({required this.item, this.onItemPressed, this.itemControl})
      : assert(onItemPressed == null ? itemControl != null : itemControl == null);

  /// The widget which will be shown on the text selection tool bar when a text is highlighted
  final Widget item;

  /// This gives access the highlighted text, the start index and the end index of the highlighted text
  final Function(String highlightedText, int startIndex, int endIndex)? onItemPressed;

  /// This gives you the option to use flutter text selection controls on your custom widget
  /// For instance, instead of having the text [Copy] on the tool bar,...
  /// ...you can have the [Icon(Icons.copy)] as the widget...
  /// ...and use [ToolBarItemControl.copy] control to copy the highlighted text when the icon is tapped
  final ToolBarItemControl? itemControl;
}