import 'package:flutter/material.dart';
import 'package:flutter_application_2/responsive.dart';

import '../constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Row(
            children: [
              Icon(
                Icons.menu,
                color: Colors.white,
              ),
              SizedBox(
                width: defaultPadding,
              )
            ],
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          const Spacer(
            flex: 2,
          ),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: secondaryColor,
          border: Border.all(color: Colors.white10)),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      child: Row(children: [
        SizedBox(
          height: 36,
          width: 36,
          child: Image.asset(
            "assets/profile.jpeg",
            height: 38,
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: Text("John Doe"),
        ),
        const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
        )
      ]),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: Theme.of(context).textTheme.labelLarge,
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.all(defaultPadding / 3),
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
