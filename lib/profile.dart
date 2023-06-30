import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:mdn_app/settting.dart';

class PageProfile extends StatelessWidget {
  const PageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              //後々画像を選択できるようにする
              'https://kotonohaworks.com/free-icons/wp-content/uploads/kkrn_icon_user_13.png',
              width: 400,
              fit: BoxFit.fill,
            ),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PageSetting(),
                      ),
                    );
                  },
                  iconSize: 60,
                  color: Colors.brown,
                  icon: const Icon(Icons.settings))),
          Container(
            color: Colors.red,
            width: 500,
            height: 100,
            child: const Text('namae'),
          ),
          Container(
            color: Colors.yellow,
            width: 500,
            height: 100,
            child: const Text('shumi'),
          ),
          Container(
            color: Colors.green,
            width: 500,
            height: 100,
            child: const Text('seibetu'),
          ),
          Container(
            color: Colors.purple,
            width: 500,
            height: 100,
            child: const Text('tanjyoubi'),
          ),
        ],
      ),
    );
  }
}
