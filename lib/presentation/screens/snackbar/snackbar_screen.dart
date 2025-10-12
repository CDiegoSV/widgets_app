import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }


  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Non dolor non sint minim eiusmod sint ea in adipisicing laborum ad quis consectetur nostrud. Excepteur proident deserunt id commodo. Ipsum do consequat qui sint in ut incididunt do aliqua Lorem nostrud est ad. Et aliquip do non cupidatat in fugiat velit veniam Lorem officia. Proident incididunt consequat labore magna ea aliqua aute laborum consectetur id est eiusmod sunt ut.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancel')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Ok')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars and Dialogs'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Ipsum velit dolor ea aliquip. In laboris reprehenderit veniam commodo ad enim aute ut mollit aliquip est cillum irure. Nisi culpa deserunt officia commodo cupidatat. Eu minim dolore adipisicing non ex et veniam magna elit sint laboris labore deserunt. Et ad proident enim magna nisi consequat minim excepteur qui cillum occaecat. Laborum ipsum anim pariatur deserunt veniam minim eu sint commodo et tempor fugiat ullamco. Ex aliquip amet deserunt aute aliqua deserunt esse laboris consequat incididunt.')
                  ]
                );
              },
              child: const Text('Used Licenses')
            ),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show Screen Dialog')
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}