import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/blogs/bloc/blogs_bloc.dart';
import 'package:flutter_blog_app/blogs/ui/pages/blog_list_page.dart';
import 'package:flutter_blog_app/injection.dart';

class BlogListPageProvider extends StatefulWidget {
  @override
  _BlogListPageProviderState createState() => _BlogListPageProviderState();
}

class _BlogListPageProviderState extends State<BlogListPageProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<BlogsBloc>(),
        child: BlogListPage(),
      ),
    );
  }
}
