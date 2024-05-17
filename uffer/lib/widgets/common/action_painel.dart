import 'package:flutter/material.dart';

class Option {
  final String label;
  final String? sublabel;
  final IconData? leftIconData;
  final IconData rightIconData;
  final VoidCallback? onPressed;

  const Option({
    required this.label,
    this.sublabel,
    this.leftIconData,
    required this.rightIconData,
    this.onPressed,
  });
}

class ActionPainel extends StatelessWidget {
  final List<Option> options;
  final VoidCallback onPressed;

  const ActionPainel({
    required this.options,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFE7E8EE)),
          color: const Color(0xFFF9FAFB),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: options.asMap().entries.map((entry) {
            final int index = entry.key;
            final Option option = entry.value;
            final bool isLastOption = index == options.length - 1;
            return Container(
              decoration: BoxDecoration(
                border: isLastOption
                    ? null
                    : const Border(
                        bottom: BorderSide(color: Color(0xFFE7E8EE)),
                      ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16), // left padding of the option box
                child: SizedBox(
                  height: 64,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (option.leftIconData != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 16), // right padding after the left icon
                          child: Icon(option.leftIconData,
                          color: const Color(0XFF79747E),), 
                        ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              option.label,
                              style: const TextStyle(
                                color: Color(0XFF44474E),
                              ),
                            ),
                            if (option.sublabel != null)
                              Text(
                                option.sublabel!,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: option.onPressed,
                        icon: Icon(
                          option.rightIconData,
                          color: const Color(0XFF79747E),
                        ),
                        iconSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
