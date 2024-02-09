import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pokemon_app/core/utils/app_images.dart';
import 'package:pokemon_app/core/utils/app_styles.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imageBackgroundOnboarding),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Gap(MediaQuery.sizeOf(context).height * .225),
          Text(
            'welcome !',
            style: AppStyles.style32(context),
          ),
          const Gap(20),
          MaterialButton(
            height: 50,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(25), right: Radius.circular(25))),
            minWidth: MediaQuery.sizeOf(context).width * .65,
            color: Colors.red,
            onPressed: () {},
            child: Text('see the list of pokemons'.toUpperCase()),
          )
        ],
      ),
    );
  }
}
