import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'for_you_provider.g.dart';

@riverpod
class ForYouProvider extends _$ForYouProvider {
  @override
  void build() {}
}

class ForYouWidget extends StatelessWidget {
  const ForYouWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 180,
                //width: 100,
                child: Image.asset('assets/cancion1.jpg'),
              ),
              const Text('Cancion para ti'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              SizedBox(
                height: 180,
                //width: 100,
                child: Image.asset('assets/cancion1.jpg'),
              ),
              const Text('Cancion para ti'),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              SizedBox(
                height: 180,
                //width: 100,
                child: Image.asset('assets/cancion1.jpg'),
              ),
              const Text('Cancion para ti'),
            ],
          )
        ],
      ),
    );
  }
}
