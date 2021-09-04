import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF).withOpacity(0.05),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          Text(
            '1',
            style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
