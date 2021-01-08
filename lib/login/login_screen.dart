import 'package:app/login/bloc/login/login_bloc.dart';
import 'package:app/shared/widgets/cm_button.dart';
import 'package:app/shared/widgets/cm_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: AuthenticationListener(
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: ListView(
            children: [
              BlocBuilder<LoginBloc, LoginState>(
                buildWhen: (previous, current) =>
                    previous.username != current.username,
                builder: (context, state) {
                  return CmTextInput(
                    outerPadding: const EdgeInsets.only(top: 32),
                    titleText: 'username',
                    onChanged: (username) => context
                        .read<LoginBloc>()
                        .add(LoginUsernameChanged(username)),
                    errorText: state.username.errorString,
                    presetValue: state.username.value,
                  );
                },
              ),
              BlocBuilder<LoginBloc, LoginState>(
                buildWhen: (previous, current) =>
                    previous.password != current.password,
                builder: (context, state) {
                  return CmTextInput(
                    outerPadding: const EdgeInsets.only(top: 32),
                    titleText: 'password',
                    obscureText: true,
                    onChanged: (password) => context
                        .read<LoginBloc>()
                        .add(LoginPasswordChanged(password)),
                    errorText: state.password.errorString,
                    presetValue: state.password.value,
                  );
                },
              ),
              SizedBox(height: 2 * 16.0),
              BlocBuilder<LoginBloc, LoginState>(
                buildWhen: (previous, current) =>
                    previous.status != current.status,
                builder: (context, state) {
                  return state.status.isSubmissionInProgress
                      ? SizedBox(
                          height: 32.0,
                          child: Center(
                            child: const CircularProgressIndicator(),
                          ),
                        )
                      : CmButton(
                          text: 'Login',
                          onTap: state.status.isValidated
                              ? () => BlocProvider.of<LoginBloc>(context)
                                  .add(LoginSubmitted())
                              : null,
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthenticationListener extends StatelessWidget {
  final Widget child;

  AuthenticationListener({this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Failure')),
            );
        }
        if (state.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Success')),
            );
          Navigator.of(context).pop();
        }
      },
      child: this.child,
    );
  }
}
