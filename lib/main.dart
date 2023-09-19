/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/chat.dart';
import 'package:productivo/pages/create_new_event.dart';
import 'package:productivo/pages/create_notes.dart';
import 'package:productivo/pages/create_task.dart';
import 'package:productivo/pages/edit_profile.dart';
import 'package:productivo/pages/file_screen.dart';
import 'package:productivo/pages/forgot_password.dart';
import 'package:productivo/pages/home.dart';
import 'package:productivo/pages/inbox.dart';
import 'package:productivo/pages/login.dart';
import 'package:productivo/pages/notes.dart';
import 'package:productivo/pages/notes_detail.dart';
import 'package:productivo/pages/notifications.dart';
import 'package:productivo/pages/prepare_event.dart';
import 'package:productivo/pages/profile.dart';
import 'package:productivo/pages/profile_task.dart';
import 'package:productivo/pages/register.dart';
import 'package:productivo/pages/reset_password.dart';
import 'package:productivo/pages/search_people_modal.dart';
import 'package:productivo/pages/settings.dart';
import 'package:productivo/pages/task_category.dart';
import 'package:productivo/pages/upload_file.dart';
import 'package:productivo/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productivo',
      theme: ThemeData(
        fontFamily: "regular",
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Login.id: (context) => const Login(),
        Register.id: (context) => const Register(),
        ResetPassword.id: (context) => const ResetPassword(),
        ForgotPassword.id: (context) => const ForgotPassword(),
        Home.id: (context) => const Home(),
        Profile.id: (context) => const Profile(),
        EditProfile.id: (context) => const EditProfile(),
        Setting.id: (context) => const Setting(),
        Notifications.id: (context) => const Notifications(),
        CreateNewEvent.id: (context) => const CreateNewEvent(),
        SearchPeopleModal.id: (context) => const SearchPeopleModal(),
        PrepareEvent.id: (context) => const PrepareEvent(),
        ProfileTask.id: (context) => const ProfileTask(),
        TaskCategory.id: (context) => const TaskCategory(),
        CreateTask.id: (context) => const CreateTask(),
        Notes.id: (context) => const Notes(),
        CreateNotes.id: (context) => const CreateNotes(),
        NotesDetail.id: (context) => const NotesDetail(),
        Inbox.id: (context) => const Inbox(),
        Chat.id: (context) => const Chat(),
        FileScreen.id: (context) => const FileScreen(),
        UploadFile.id: (context) => const UploadFile(),
      },
    );
  }
}
