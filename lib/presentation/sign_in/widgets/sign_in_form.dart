import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seth_flutter/application/auth/auth_bloc.dart';
import 'package:seth_flutter/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:seth_flutter/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => {
              (failure) {},
              (_) {
                FlushbarHelper.createError(
                  message: failure.map(
                    canceledByUser: (_) => 'Canceled',
                    serverError: (_) => 'Server Error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                  ),
                ).show(context);
              }
            },
            (_) {
              ExtendedNavigator.of(context).pushHomeHubPage();
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(15.0),
            children: <Widget>[
              const SizedBox(height: 10.0),
              Image.asset('lib/infrastructure/core/assets/seth_logo.png', height: 60),
              const SizedBox(height: 25.0),
              Text(
                'You Create Your Reality',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.orange[500],
                  fontSize: 26.0,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: 'Email'),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 15.0),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock), labelText: 'Password'),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short Password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.orange[500]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPassword(),
                            );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.orange[500]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      elevation: 8.0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0))),
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithGooglePressed(),
                            );
                      },
                      child: const Text('Sign In With Google'),
                    ),
                  ),
                ],
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null),
              ],
            ],
          ),
        );
      },
    );
  }
}
