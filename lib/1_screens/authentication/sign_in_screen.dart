import 'package:go_router/go_router.dart';
import 'package:path/path.dart' as path;
import 'package:smatii/index.dart';
import 'package:smatii/widgets/component/custom_check_list_tile.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(signInScreenNotifierProvider.select((value) => null));
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultHorizontal,
            vertical: kDefaultVertical,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '안녕하세요.\n플라이워치입니다.',
                    style: TSTextStyle.size24.flyBlack,
                  ),
                  SvgPicture.asset(
                    'assets/images/img-login-drone.svg',
                  ),
                ],
              ),
              const SizedBox(height: 69),
              const EmailTextFormField(),
              const SizedBox(height: 16),
              const PasswordTextFormField(),
              const SizedBox(height: 10),
              CustomCheckListTile(
                text: '전체 동의하기',
                value: false,
                onChanged: (value) {},
              ),
              const Spacer(),
              const LoginTextFormField(),
              const SizedBox(height: 16),
              const SignUpButton(),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    String page = path.join(Routes.tab, Routes.signIn, Routes.signUpPasswordReset);
                    context.push(page);
                  },
                  child: Text(
                    '비밀번호 재설정',
                    style: TSTextStyle.size14.flyGrey800.medium,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmailTextFormField extends ConsumerWidget {
  const EmailTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '아이디',
          style: TSTextStyle.size14.medium,
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            hintText: '이메일을 입력해주세요.',
            hintStyle: TSTextStyle.size14.flyGrey600.semiBold,
            filled: true,
            fillColor: TSColors.flyGrey300,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: TSColors.flyBlue700,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
          ),
          onChanged: (value) {
            ref.read(signInScreenNotifierProvider.notifier).setEmail(value);
          },
        ),
      ],
    );
  }
}

class PasswordTextFormField extends ConsumerWidget {
  const PasswordTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '비밀번호',
          style: TSTextStyle.size14.medium,
        ),
        const SizedBox(height: 10),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: '비밀번호 (10~20자리 이내)',
            hintStyle: TSTextStyle.size14.flyGrey600.semiBold,
            filled: true,
            fillColor: TSColors.flyGrey300,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: TSColors.flyBlue700,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
          ),
          onChanged: (value) {
            ref.read(signInScreenNotifierProvider.notifier).setPassword(value);
          },
        ),
      ],
    );
  }
}

class LoginTextFormField extends ConsumerWidget {
  const LoginTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 60)),
      onPressed: () {
        var message = ref.read(signInScreenNotifierProvider.notifier).signInValidate();
        if (message == null) {
          ref.read(signInScreenNotifierProvider.notifier).signIn();
        } else {
          tsShowSnackBar(content: message);
        }
      },
      child: Text(
        '로그인',
        style: TSTextStyle.size20.flyWhite.medium,
      ),
    );
  }
}

class SignUpButton extends ConsumerWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(double.infinity, 60)),
      onPressed: () {
        String page = path.join(Routes.tab, Routes.signIn, Routes.signUpAgreement);
        context.push(page);
      },
      child: Text(
        '회원가입',
        style: TSTextStyle.size20.flyGrey700.medium,
      ),
    );
  }
}
