import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_aulas/feed/domain/post_entity.dart';

class PostDescriptionWidget extends StatefulWidget {
  final PostEntity post;
  const PostDescriptionWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostDescriptionWidget> createState() => _PostDescriptionWidgetState();
}

class _PostDescriptionWidgetState extends State<PostDescriptionWidget> {
  bool _isSeen = false;

  @override
  Widget build(BuildContext context) {
    return !_isSeen ? _buildRow() : _buildRichText();
  }

  Widget _buildRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Text(
            widget.post.user.name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 2,
          child: Text(
            'lksjdflksdfj klsjd flksdj flskdj flksd jflskdj flksdj flksdj flskdjlksjf sdlfkj sdlfkj sdlkfj sldkfj slkdfj slkdfj sldkjf slkdf jslk f',
            style: const TextStyle(
              color: Colors.white,
            ),
            overflow: _isSeen ? TextOverflow.ellipsis : null,
          ),
        ),
        Flexible(
          flex: 1,
          child: InkWell(
            onTap: () {
              setState(() {
                _isSeen = !_isSeen;
              });
            },
            child: const Text(
              'mais',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRichText() {
    return RichText(
      text: TextSpan(
        text: widget.post.user.name, //thiago.desales
        children: [
          TextSpan(
            text:
                ' lksdlfsdlfks skjdflksdj fsldf sldkfj sldkjf slkdfj sldkfj lskjd fsd', //akjdfld sldfjsd
            style: const TextStyle(color: Colors.white),
          ),
          TextSpan(
            text: ' mais',
            style: const TextStyle(color: Colors.grey),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                setState(() {
                  _isSeen = !_isSeen;
                });
              },
          )
        ],
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
