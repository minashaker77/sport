import 'package:flutter/material.dart';
import 'package:sport/textfield_widget.dart';

class MonthTabScreen extends StatelessWidget {
  const MonthTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: double.infinity,
          height: 50,
          color: const Color(0xffc163ff),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 20,
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  'فرم استخدام',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ],
            ),
          )),
      Center(
        child: Text(
          "جهت استخدام فرم زیر را پر کنید",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      TextFieldWidget(
        name: 'نام و نام خانوادگی',
        expandable: false,
        textInputType: TextInputType.name,
      ),
      TextFieldWidget(
        name: 'سن',
        expandable: false,
        textInputType: TextInputType.number,
      ),
      TextFieldWidget(
        name: 'مدارک تحصیلی ',
        expandable: false,
        textInputType: TextInputType.text,
      ),
      TextFieldWidget(
        name: 'سوابق کاری',
        expandable: false,
        textInputType: TextInputType.text,
      ),
      TextFieldWidget(
        name: 'مهارت های ویژه ',
        expandable: false,
        textInputType: TextInputType.text,
      ),
      Container(
        height: 300,
        margin: const EdgeInsets.only(bottom: 10),
        child: TextFieldWidget(
          name: 'توضیحات بیشتر',
          expandable: true,
          textInputType: TextInputType.text,
        ),
      ),
      MaterialButton(
        onPressed: () {},
        minWidth: 225,
        height: 45,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: const Color(0xffc163ff),
        child: const Text(
          "ثبت اطلاعات",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      )
    ]);
  }
}
