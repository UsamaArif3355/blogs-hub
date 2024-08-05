import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/views/desktop/about/about_and_contactme_area.dart';
import 'package:dorilla_games/views/desktop/about/contact/view-model/email_sender_cubit.dart';
import 'package:dorilla_games/views/desktop/about/contact_area.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/select-service/select_service_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';




class AboutUsPage extends StatelessWidget {
  const AboutUsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Generate a list of 50 sample blog entries
    final List<Blog> blogs = List.generate(50, (index) {
      return Blog(
        icon: 'assets/images/store.png', // Adjust the path according to your project structure
        title: 'Blog Title ${index+1}',
        description: 'Description for blog ${index+1}. This is a sample description to demonstrate text overflow handling in the blog item widget.',
        datetime: DateTime.now().subtract(Duration(days: index)),
      );
    });

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Sports Blogs'),

      ),
      body: Padding(
        padding: context.desktopContentPad,
        child: SizedBox(
          width: context.widthToBeUsed,
          child: PaginatedBlogList(blogs: blogs),
        ),
      ),
    );
  }
}





class Blog {
  final String icon;
  final String title;
  final String description;
  final DateTime datetime;

  Blog({
    required this.icon,
    required this.title,
    required this.description,
    required this.datetime,
  });
}






class BlogItem extends StatelessWidget {
  final Blog blog;

  const BlogItem({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                blog.icon,
                width: 200,
                height: 60,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      blog.title,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    Text(
                      blog.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16,color: Colors.white),
                    ),
                    Text(
                      DateFormat.yMMMd().format(blog.datetime),
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
        ],
      ),
    );
  }
}





class PaginatedBlogList extends StatefulWidget {
  final List<Blog> blogs;
  final int itemsPerPage;

  const PaginatedBlogList({
    Key? key,
    required this.blogs,
    this.itemsPerPage = 10, // Default items per page
  }) : super(key: key);

  @override
  _PaginatedBlogListState createState() => _PaginatedBlogListState();
}

class _PaginatedBlogListState extends State<PaginatedBlogList> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final totalPages = (widget.blogs.length / widget.itemsPerPage).ceil();

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.itemsPerPage,
            itemBuilder: (context, index) {
              final blogIndex = currentPage * widget.itemsPerPage + index;
              if (blogIndex >= widget.blogs.length) {
                return const SizedBox.shrink();
              }
              return BlogItem(blog: widget.blogs[blogIndex]);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (currentPage > 0)
              TextButton(
                onPressed: () {
                  setState(() {
                    currentPage--;
                  });
                },
                child: const Text('Previous',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            if (currentPage < totalPages - 1)
              TextButton(
                onPressed: () {
                  setState(() {
                    currentPage++;
                  });
                },
                child: const Text('Next',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
          ],
        ),
      ],
    );
  }
}
