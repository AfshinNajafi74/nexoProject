import 'package:flutter/material.dart';

class NexoAppBar extends StatelessWidget with PreferredSizeWidget  {
  NexoAppBar({
    super.key,
    this.textButton,
    this.backButton
  });

  final TextButton? textButton;
  final IconButton? backButton;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return AppBar(
      actions: [
        /// A button to save or change the theme
        // It is used in different pages
        textButton!,
      ],
      leading: backButton,
      // delete shadow
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Text("Contacts",style: textTheme.titleMedium,),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  // Change size app bar
  Size get preferredSize => const Size.fromHeight(60);
}
