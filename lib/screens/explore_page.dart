import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manna/utils/constants.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({
    super.key,
  });

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // precacheImage(
    //   AssetImage(
    //     'assets/images/badminton.jpeg',
    //   ),
    //   context,
    // );
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            // Text(
            //   'Explore',
            //   style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            SizedBox(
              // height: 40,
              child: TextField(
                decoration: const InputDecoration(
                  // labelText: 'Search',
                  hintText: 'Basketball, tennis, gym...',
                  isDense: true,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Top Categories',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/basketball-min.jpg',
                            ),
                            filterQuality: FilterQuality.none,
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),

                          // image: DecorationImage(
                          //   image: baseball.image,
                          //   filterQuality: FilterQuality.none,
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        height: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/gym-min.jpg',
                            ),
                            filterQuality: FilterQuality.none,
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/jogging.jpg',
                            ),
                            filterQuality: FilterQuality.none,
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Browse All',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3.5,
              ),
              itemCount: Activity.values.length,
              itemBuilder: (context, index) {
                final activity = Activity.values[index];

                return GestureDetector(
                  onTap: () {
                    context.go('/explore/search');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        SizedBox.square(
                          dimension: 60,
                          child: Image.asset(
                            'assets/images/yoga.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(activity.name),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
