import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Course {
 String code;
 String title;
 String description;
 Course({required this.code, 
         required this.title,  
         this.description = ""});
}



class CoursesListScreen extends StatelessWidget {
 const CoursesListScreen({required this.courses, required this.onTapped});
 final List<Course> courses;
 final ValueChanged<Course> onTapped;

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("Courses List")),
     body: ListView(
       children: [
         for (var course in courses)
           ListTile(
             title: Text(course.title),
             subtitle: Text(course.code),
             onTap: () => onTapped(course),
           ),
       ],
     ),);}
}





class CourseDetailsScreen extends StatelessWidget {
 final Course course;
 const CourseDetailsScreen({required this.course});
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text(course.title)),
     body: Center(
       child: Column(
         children: [
           Text(course.title),
           Text(course.code),
           Text(course.description),
         ],
       ),),);
 }
}


class CourseApp extends StatefulWidget {
 @override
 State<CourseApp> createState() => _CourseAppState();
}


class _CourseAppState extends State<CourseApp> {
 Course? _selectedCourse;

 List<Course> courses = [
   Course(
       code: "SiTE-001",
       title: "Introduction To Programming",
       description: "Computer Organization, Architecture, Programming"),
 ];

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    home: Navigator(
       pages: [
         MaterialPage(
             key: const ValueKey('CourseListScreen'),
             child: CoursesListScreen(
                courses: courses,
                onTapped: _tabHandler,
         )),
         if (_selectedCourse != null)
           MaterialPage(
               key: ValueKey(_selectedCourse),
               child: CourseDetailsScreen(course: _selectedCourse!,))

       ],

       onPopPage: (route, result) {
         if (!route.didPop(result)) {
           return false;
         }
         setState(() {
           _selectedCourse = null;
         });
         return true;
       },

     ),
     
   );
   
 }
 void _tabHandler(Course course) {
   setState(() {
    _selectedCourse = course;
   });
 }
 
}



void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MyApp(),
    ),
  );
}

class CourseAppState extends ChangeNotifier {
 Course? selectedCourse;

 List<Course> courses = [
   Course(
       code: "SiTE-001",
       title: "Introduction To Programming",
       description: "Computer Organization, Programming"),
 ];

 void selectCourse(Course? course) {
   selectedCourse = course;
   notifyListeners();
 }
}


class CoursesListScreen2 extends StatelessWidget {

 @override
 Widget build(BuildContext context) {

   var appState = Provider.of<CourseAppState>(context, listen: false);

   var courses = appState.courses;
   return Scaffold(
     appBar: AppBar(title: const Text("Courses List")),
     body: ListView(
       children: [
         for (var course in courses)
           ListTile(
               title: Text(course.title),
               subtitle: Text(course.code),
               onTap: () => appState.selectCourse(course)),
       ],
     ),
   );
 }
}


class CourseDetailsScreen2 extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   var course =
       Provider.of<CourseAppState>(context, listen: false).selectedCourse;
   
  return Scaffold(
     appBar: AppBar(title: Text(course?.title ?? "")),
     body: Center(
       child: Column(
         children: [
           Text(course?.title ?? ""),
           Text(course?.code ?? ""),
           Text(course?.description ?? ""),
         ],
       ),
     ),
   );
 }
}

class CourseApp2 extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   var appState = Provider.of<CourseAppState>(context);
   return MaterialApp(
     home: Navigator(
       pages: [
         const MaterialPage(
           key: ValueKey('CourseListScreen'),
           child: CoursesListScreen2(),
         ),
         if (appState.selectedCourse != null)
           MaterialPage(
               key: ValueKey(appState.selectedCourse),
               child: const CourseDetailsScreen2())
       ],
     ),
   )
 }
}

