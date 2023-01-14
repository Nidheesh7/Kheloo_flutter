import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kheloo/features/utils/colors.dart';
import 'package:kheloo/features/utils/extensions.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: colorPrimary,
        height: 76.0,
        child: Row(
          children: [
            Expanded(
              child: _ThisItemWidget(
                label: 'Support',
                icon: 'sound',
                isSelected: true,
                onTap: () {},
              ),
            ),
            Expanded(
              flex: 2,
              child: ClipPath(
                clipper: SkewCut(),
                child: Container(
                  color: Colors.black,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    scrollDirection: Axis.horizontal,
                    itemCount: menuList.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: _ThisItemWidget(
                        label: menuList[index].name ?? '',
                        icon: menuList[index].icon ?? '',
                        isSelected: true,
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: _ThisItemWidget(
                label: 'Support',
                icon: 'support',
                isSelected: true,
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ThisItemWidget extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _ThisItemWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 30.0,
            height: 30.0,
            child: icon.contains('.png')
                ? Image.asset(icon.asAssetImg())
                : SvgPicture.asset(
                    icon.asAssetSvg(),
                    color: Colors.white,
                  ),
          ),
          const SizedBox(height: 4.0),
          Text(
            label,
            style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                height: 1.0),
          )
        ],
      ),
    );
  }
}

class SkewCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // final path = Path();
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width - 20, size.height);
    // path.lineTo(0, size.height);
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width - 25, size.height);

    path.lineTo(size.height - 1, size.width);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(SkewCut oldClipper) => true;
}

List<Menu> menuList = [
  Menu(name: 'Sports', icon: 'ball.png'),
  Menu(name: 'Casino', icon: 'coins1.png'),
  Menu(name: 'Sports', icon: 'ball.png'),
  Menu(name: 'Casino', icon: 'coins1.png')
];

class Menu {
  String? name;
  String? icon;
  Menu({this.name, this.icon});
}
