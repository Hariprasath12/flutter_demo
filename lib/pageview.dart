import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
    viewportFraction:0.8,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Page view')
      ),
          body: AnimatedContainer(
        duration: Duration(seconds: 2),
            child: PageView(
                scrollDirection: Axis.horizontal,

          controller: _controller,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                  child: Align(
                    alignment: Alignment.center,
                                child: Image.network(
                        'https://images.unsplash.com/photo-1501746763-ba6f2e0dd47c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',
                        height: 500,
                         width: 300,
                        ),
                  ),
                      ),
            ),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                  child: Align(
                    alignment: Alignment.center,
                                child: Image.network(
                        'https://images.unsplash.com/photo-1501250523374-8f78abda6b86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1482&q=80',
                        height: 500,
                         width: 300,
                        ),
                  ),
                      ),
           ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
                child: Align(
                  alignment: Alignment.center,
                                child: Image.network(
                        'https://images.unsplash.com/photo-1589380017877-9d7346df8849?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1575&q=80',
                        height: 500,
                        width: 300,
                        ),
                ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}