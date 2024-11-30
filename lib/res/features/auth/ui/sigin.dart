import 'package:flutter/material.dart';
import 'package:flutter_auth_1/res/features/auth/ui/auth_notifier.dart';
import 'package:flutter_auth_1/res/features/dashboard/dashbboard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Signin extends ConsumerStatefulWidget {
  const Signin({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SigninState();
}

class _SigninState extends ConsumerState<Signin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Column(
        children: [
          const Text("Email : "),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(),
          ),
          const Text("Password : "),
          TextFormField(
            controller: passController,
            decoration: const InputDecoration(),
          ),
          const SizedBox(
            height: 40.0,
          ),
          ElevatedButton(
            onPressed: () async {
              final respose = await ref
                  .read(authNotifierProvider.notifier)
                  .signIn(
                      email: emailController.text,
                      password: passController.text);

              final token = respose.token;
              if (token.isNotEmpty && context.mounted) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashBoard(),
                  ),
                );
              } else {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Something Went Wrong"),
                    ),
                  );
                }
              }
            },
            child: const Text(
              "Sign In",
            ),
          ),
        ],
      ),
    );
  }
}
