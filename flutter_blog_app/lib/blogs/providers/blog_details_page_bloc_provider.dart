import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_app/blogs/bloc/blogs_bloc.dart';
import 'package:flutter_blog_app/blogs/ui/pages/blog_details_page.dart';
import 'package:flutter_blog_app/injection.dart';

class BlogDetailsPageProvider extends StatefulWidget {
  final String id;

  const BlogDetailsPageProvider({Key key, this.id}) : super(key: key);
  @override
  _BlogDetailsPageProviderState createState() =>
      _BlogDetailsPageProviderState();
}

class _BlogDetailsPageProviderState extends State<BlogDetailsPageProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<BlogsBloc>(),
        child: BlogDetailsPage(id: widget.id),
      ),
    );
  }
}
