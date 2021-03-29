import 'package:flutter_blog_app/core/routes/router.gr.dart';
import 'package:flutter_blog_app/core/ui/themes/flutter_bloc_app_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/authentication/domain/failures/api_service_failures.dart';
import 'package:flutter_blog_app/blogs/bloc/blogs_bloc.dart';
import 'package:flutter_blog_app/blogs/models/blog.dart';

class BlogDetailsPage extends StatefulWidget {
  final String id;

  const BlogDetailsPage({Key key, this.id}) : super(key: key);
  @override
  _BlogDetailsPageState createState() => _BlogDetailsPageState();
}

class _BlogDetailsPageState extends State<BlogDetailsPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<BlogsBloc>(context).add(LoadBlogDetails(id: widget.id));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double appHeight = MediaQuery.of(context).size.height;
    final double appWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<BlogsBloc, BlogsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is BlogsDetailsLoaded) {
          Either<ApiServiceFailure, Blog> result = state.blogDetailsResponse;
          return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              title: Text(
                'BLOG DETAILS',
                style: flutterBlogAppAppTheme().textTheme.bodyText1.copyWith(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () => Router.navigator.pop()),
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
            body: SafeArea(
              child:
                  result.fold((failure) => Center(child: Container()), (blog) {
                return Column(
                  children: [
                    Image.network(
                      blog.imageUrl,
                      width: double.infinity,
                    ),
                    CachedNetworkImage(
                      width: double.infinity,
                      // height: 500.0,
                      imageUrl: blog.imageUrl,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(blog.title),
                          Text(DateFormat('dd/MM/yyyy')
                              .format(DateTime.parse(blog.createdAt))),
                        ],
                      ),
                    )
                  ],
                );
              }),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
