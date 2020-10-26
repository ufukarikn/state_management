import 'package:application_serialone/viewmodels/posts_viewmodel.dart';
import 'package:application_serialone/widgets/left_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PostsViewModel _postsViewModel;


  @override
  Widget build(BuildContext context) {
    _postsViewModel = Provider.of<PostsViewModel>(context);
    _postsViewModel.getAllPostsVievModel();
    return Scaffold(
      backgroundColor: Color(0xFF776d8a),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Provider State Management",
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LeftMenu()));
            },
          )),
      body: Center(
        child: (_postsViewModel.state == PostsViewState.LoadingState)
            ? CircularProgressIndicator()
            : (_postsViewModel.state == PostsViewState.LoadedState)
                ? loadedState()
                : Text("Hata"),
      ),
    );
  }

  Widget loadedState() {
    return ListView.builder(
        itemCount: _postsViewModel.response.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFFf3e6e3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: GestureDetector(
                onTap:(){},
                child: CircleAvatar(
                  backgroundColor: Color(0xFF776d8a),
                  radius: 25,
                  child: Text(
                    _postsViewModel.response[index].id.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  _postsViewModel.response[index].title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(_postsViewModel.response[index].body),
              trailing: InkWell(
                  onTap:(){},
                  child: Icon(Icons.arrow_right)),
            ),
          );
        });
  }
}



