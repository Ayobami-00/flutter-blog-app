import 'package:intl/intl.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/authentication/domain/failures/api_service_failures.dart';
import 'package:flutter_blog_app/blogs/bloc/blogs_bloc.dart';
import 'package:flutter_blog_app/blogs/models/blog.dart';

class BlogListPage extends StatefulWidget {
  @override
  _BlogListPageState createState() => _BlogListPageState();
}

class _BlogListPageState extends State<BlogListPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<BlogsBloc>(context).add(LoadBlogsList());
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
        if (state is BlogsLoaded) {
          Either<ApiServiceFailure, List<Blog>> result = state.blogListResponse;
          return SafeArea(
            child:
                result.fold((failure) => Center(child: Container()), (blogs) {
              List<Blog> reversedBlogs = blogs.reversed.toList();
              return reversedBlogs.isEmpty
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 20.0,
                      ),
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          final Blog blog = reversedBlogs[index];

                          return ListTile(
                            onTap: () async {
                              // String url = news_list[index]['url'];
                              // if (await canLaunch(url)) {
                              //   await launch(url);
                              // } else {
                              //   _key.currentState.showSnackBar(SnackBar(
                              //       content: Text(
                              //           "Cannot open link at this time!")));
                              // }
                            },
                            leading: Image.network(
                              blog.imageUrl,
                              width: 60.0,
                            ),
                            title: Text(blog.title),
                            subtitle: Text(DateFormat('dd/MM/yyyy')
                                .format(DateTime.parse(blog.createdAt))),
                          );
                        },
                        itemCount: reversedBlogs.length,
                      ));
            }),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
