import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:gmail_setting_page/main.dart';
import 'package:gmail_setting_page/utils/appcolors.dart';
import 'package:gmail_setting_page/utils/country_languages.dart';
import 'package:gmail_setting_page/utils/defaultfordropdown.dart';
import 'package:gmail_setting_page/utils/fonts.dart';
import 'package:gmail_setting_page/utils/links_widget.dart';
import 'package:gmail_setting_page/utils/reusable_tab_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String ctyLanguages = 'English (UK)';
  String ctyName = 'India';
  String fontfam = 'Sans Serif';
  double fontsize = 14.0;
  String fontsizeintxt = 'Normal';
  String no_signature = 'NO Signature';

  bool? isChecked = true;
  // For Signature
  String signfontfam = 'Sans Serif';
  double signfontsize = 14.0;
  String signfontsizeintxt = 'Normal';
  Color signpickerColor = Color(0xff443a49);
  bool textBold = false;
  bool textItalic = false;
  bool textunderline = false;

  // create some values
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  TextEditingController _signatureController = TextEditingController();

// ValueChanged<Color> callback
  void signchangeColor(Color color) {
    setState(() => signpickerColor = color);
  }

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  List<Color> colorful = [
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.purple,
    Colors.blue,
    Colors.green
  ];
  List<Color?> blank = [
    null,
    null,
    null,
    null,
    null,
    null,
  ];

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Appcolors().primaryColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: mq.height * .1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: mq.width * 0.15,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.menu),
                          SizedBox(
                            width: mq.width * 0.08,
                            child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/a/ab/Gmail2020.logo.png'),
                          )
                        ]),
                  ),
                  Container(
                    width: mq.width * .6,
                    decoration: BoxDecoration(
                        color: Appcolors().navbarColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  Container(
                    width: mq.width * .18,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.contact_support_outlined),
                          Icon(Icons.settings_outlined),
                          Icon(Icons.apps),
                          Container(
                              width: mq.width * 0.03,
                              height: mq.width * 0.03,
                              decoration: BoxDecoration(
                                  color: Appcolors().tabtxtColor,
                                  borderRadius:
                                      BorderRadius.circular(mq.width * 0.015)),
                              child: Icon(
                                Icons.person,
                                color: Appcolors().whiteColor,
                              ))
                        ]),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Items
                  Container(
                    width: mq.width * .2,
                    color: Appcolors().primaryColor,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: mq.width * .13,
                            height: mq.height * 0.09,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Appcolors().btnColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.edit,
                                        color: Appcolors().secondaryColor),
                                    Text(
                                      'Compose',
                                      style: TextStyle(
                                          color: Appcolors().secondaryColor),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: mq.width * .13,
                            height: mq.height * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.inbox),
                                    SizedBox(
                                      width: mq.width * 0.01,
                                    ),
                                    Text('Inbox')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star_border),
                                    SizedBox(
                                      width: mq.width * 0.01,
                                    ),
                                    Text('Starred')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time),
                                    SizedBox(
                                      width: mq.width * 0.01,
                                    ),
                                    Text('Snoozed')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.send),
                                    SizedBox(
                                      width: mq.width * 0.01,
                                    ),
                                    Text('Sent')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.drafts_outlined),
                                    SizedBox(
                                      width: mq.width * 0.01,
                                    ),
                                    Text('Draft')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.keyboard_arrow_down_outlined),
                                    SizedBox(
                                      width: mq.width * 0.01,
                                    ),
                                    Text('More')
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: mq.height * 0.03,
                          ),
                          SizedBox(
                            width: mq.width * 0.15,
                            child: ListTile(
                              title: Text('Labels'),
                              trailing: Icon(Icons.add),
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: mq.width * 0.01,
                  ),

                  // Main Item
                  Container(
                    width: mq.width * .73,
                    height: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Appcolors().whiteColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(color: Appcolors().iconColor, blurRadius: 3)
                        ]),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Settings',
                            style: TextStyle(
                                fontFamily: 'Sans Serif', fontSize: 24),
                          ),
                          const Divider(),

                          //  Tabs
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                  onPressed: () {},
                                  shape: Border(
                                      bottom: BorderSide(
                                          color: Appcolors().activeColor)),
                                  child: ReusableTextWidget(
                                    txt: 'General',
                                    color: Appcolors().activeColor,
                                  )),
                              const ReusableTextWidget(txt: 'Labels'),
                              const ReusableTextWidget(txt: 'Inbox'),
                              const ReusableTextWidget(
                                  txt: 'Accounts and Import'),
                              const ReusableTextWidget(
                                  txt: 'Filters and blocked addresses'),
                              const ReusableTextWidget(
                                  txt: 'Forwarding and POP/IMAP'),
                              const ReusableTextWidget(txt: 'Add-ons'),
                            ],
                          ),
                          SizedBox(
                            height: mq.height * 0.03,
                          ),

                          // Sub category
                          Row(
                            children: [
                              const ReusableTextWidget(
                                  txt: 'Chat and Meet', fontSize: 14),
                              SizedBox(
                                width: mq.width * 0.02,
                              ),
                              const ReusableTextWidget(
                                txt: 'Advanced',
                                fontSize: 14,
                              ),
                              SizedBox(
                                width: mq.width * 0.02,
                              ),
                              const ReusableTextWidget(
                                  txt: 'Offline', fontSize: 14),
                              SizedBox(
                                width: mq.width * 0.02,
                              ),
                              const ReusableTextWidget(
                                  txt: 'Themes', fontSize: 14),
                            ],
                          ),
                          SizedBox(
                            height: mq.height * 0.01,
                          ),
                          const Divider(),

                          //Languages
                          SizedBox(
                              child: Row(
                            children: [
                              SizedBox(
                                  width: mq.width * 0.15,
                                  child: Text(
                                    'Languages:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Appcolors().secondaryColor,
                                      fontSize: 13,
                                    ),
                                  )),
                              SizedBox(
                                width: mq.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Gmail display language:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Appcolors().secondaryColor,
                                            fontSize: 13,
                                          ),
                                        ),
                                        SizedBox(
                                          width: mq.width * 0.01,
                                        ),
                                        DropdownButton(
                                          style: TextStyle(fontSize: 14),
                                          value: ctyLanguages,
                                          icon: Icon(Icons.keyboard_arrow_down),
                                          items: CountryLanguagesAndName()
                                              .countryLanguages
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String? value) {
                                            setState(() {
                                              ctyLanguages = value!;
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                    const LinksWidgets(
                                        txt:
                                            'Change language settings for other Google products'),
                                    const LinksWidgets(
                                        txt: 'Show all language options')
                                  ],
                                ),
                              )
                            ],
                          )),

                          SizedBox(
                            height: mq.height * 0.02,
                          ),
                          const Divider(),

                          // Phone Number
                          Row(
                            children: [
                              SizedBox(
                                  width: mq.width * 0.15,
                                  child: Text(
                                    'Phone numbers:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Appcolors().secondaryColor,
                                      fontSize: 13,
                                    ),
                                  )),
                              SizedBox(
                                width: mq.width * 0.4,
                                child: Row(
                                  children: [
                                    Text(
                                      'Default country code:',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Appcolors().secondaryColor,
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(
                                      width: mq.width * 0.01,
                                    ),
                                    DropdownButton(
                                      style: TextStyle(fontSize: 14),
                                      value: ctyName,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      items: CountryLanguagesAndName()
                                          .countryNames
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String? value) {
                                        setState(() {
                                          ctyName = value!;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                          SizedBox(
                            height: mq.height * 0.02,
                          ),
                          const Divider(),

                          // Default Text Style
                          Row(
                            children: [
                              SizedBox(
                                  width: mq.width * 0.13,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Default text style:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Appcolors().secondaryColor,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const ReusableTextWidget(
                                        txt:
                                            "(Use the 'Remove formatting' button on the toolbar to reset the default text style)",
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      )
                                    ],
                                  )),
                              SizedBox(
                                width: mq.width * 0.02,
                              ),
                              Container(
                                width: mq.width * 0.4,
                                height: mq.height * 0.12,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: BoxDecoration(
                                    color: Appcolors().whiteColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Appcolors().tabtxtColor,
                                          blurRadius: 5,
                                          offset: Offset(0.0, 5))
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: mq.width * 0.25,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          DropdownButton(
                                            underline: SizedBox(),
                                            style: TextStyle(fontSize: 14),
                                            value: fontfam,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items: MyFont()
                                                .myfonts
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
                                              print(value);
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      fontFamily: value),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (String? value) {
                                              setState(() {
                                                fontfam = value!;
                                              });
                                            },
                                          ),
                                          DropdownButton<String>(
                                            underline: SizedBox(),
                                            value: fontsizeintxt,
                                            onChanged: (String? newCategory) {
                                              setState(() {
                                                if (newCategory != null) {
                                                  fontsizeintxt = newCategory;
                                                  fontsize = MyFont()
                                                      .fontsize[newCategory]!;
                                                }
                                              });
                                            },
                                            items: MyFont()
                                                .fontsize
                                                .keys
                                                .map((String category) {
                                              print(category);
                                              return DropdownMenuItem<String>(
                                                value: category,
                                                child: Text(
                                                  "${category}",
                                                  style: TextStyle(
                                                      fontSize: MyFont()
                                                          .fontsize[category]),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                          InkWell(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'Pick a color!'),
                                                      content:
                                                          SingleChildScrollView(
                                                        child: ColorPicker(
                                                          pickerColor:
                                                              pickerColor,
                                                          onColorChanged:
                                                              changeColor,
                                                        ),
                                                      ),
                                                      actions: <Widget>[
                                                        ElevatedButton(
                                                          child: const Text(
                                                              'Got it'),
                                                          onPressed: () {
                                                            setState(() =>
                                                                currentColor =
                                                                    pickerColor);
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'A',
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                  Icon(Icons.arrow_drop_down)
                                                ],
                                              )),
                                          SizedBox(
                                            width: mq.width * 0.015,
                                            child: Image.network(
                                                'https://cdn3.iconfinder.com/data/icons/google-material-design-icons/48/ic_format_clear_48px-512.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'This is what your body text will look like.',
                                      style: TextStyle(
                                          fontFamily: fontfam,
                                          fontSize: fontsize,
                                          color: pickerColor),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                          SizedBox(
                            height: mq.height * 0.02,
                          ),
                          const Divider(),

                          // Stars

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: mq.width * 0.15,
                                  child: Text(
                                    'Stars:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Appcolors().secondaryColor,
                                      fontSize: 13,
                                    ),
                                  )),
                              SizedBox(
                                width: mq.width * 0.55,
                                height: mq.height * 0.18,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: RichText(
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          text: const TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    'Drag the stars between the lists.',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text:
                                                  'The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your mouse over the image.',
                                            )
                                          ])),
                                    ),
                                    SizedBox(
                                      height: mq.height * 0.12,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: mq.width * 0.06,
                                            height: mq.height * 0.12,
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Presets:'),
                                                Text(
                                                  'In use:',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text('Not in use:',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: mq.width * 0.05,
                                          ),
                                          SizedBox(
                                            width: mq.width * 0.2,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Text(
                                                        '1 stars',
                                                        style: TextStyle(
                                                            color: Appcolors()
                                                                .activeColor),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Text(
                                                        '4 stars',
                                                        style: TextStyle(
                                                            color: Appcolors()
                                                                .activeColor),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Text(
                                                        'all stars',
                                                        style: TextStyle(
                                                            color: Appcolors()
                                                                .activeColor),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: mq.width * 0.2,
                                                  height: mq.height * 0.08,
                                                  child: ListView.builder(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount: 6,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return Column(
                                                          children: [
                                                            DragTarget<Color>(
                                                              onAccept: (data) {
                                                                setState(() =>
                                                                    blank[index] =
                                                                        data);
                                                              },
                                                              builder: (context,
                                                                      candidateData,
                                                                      rejectedData) =>
                                                                  Icon(
                                                                Icons.star,
                                                                color: blank[
                                                                        index] ??
                                                                    Colors
                                                                        .white,
                                                              ),
                                                            ),
                                                            IgnorePointer(
                                                              ignoring: blank[
                                                                      index] !=
                                                                  null,
                                                              child: Opacity(
                                                                opacity:
                                                                    blank[index] !=
                                                                            null
                                                                        ? 0
                                                                        : 1,
                                                                child:
                                                                    Draggable<
                                                                        Color>(
                                                                  data: colorful[
                                                                      index],
                                                                  feedback:
                                                                      Icon(
                                                                    Icons.star,
                                                                    color: colorful[
                                                                        index],
                                                                  ),
                                                                  child: Icon(
                                                                    Icons.star,
                                                                    color: colorful[
                                                                        index],
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        );
                                                      }),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),

                          SizedBox(
                            height: mq.height * 0.02,
                          ),
                          const Divider(),
                          // Signature
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: mq.width * 0.13,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Signature:',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Appcolors()
                                                      .secondaryColor,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              const ReusableTextWidget(
                                                txt:
                                                    "(appended at the end of all outgoing messages)",
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                              LinksWidgets(txt: 'Learn more')
                                            ],
                                          )),
                                      Row(
                                        children: [
                                          Container(
                                            height: mq.height * 0.2,
                                            width: mq.width * 0.2,
                                            child: Container(
                                              height: mq.height * .2,
                                              width: mq.width * 0.2,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Appcolors()
                                                          .tabtxtColor)),
                                            ),
                                          ),
                                          Container(
                                            height: mq.height * 0.2,
                                            width: mq.width * 0.37,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      Appcolors().tabtxtColor),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  height: mq.height * 0.12,
                                                  child: TextFormField(
                                                    maxLines: 6,
                                                    controller:
                                                        _signatureController,
                                                    style: TextStyle(
                                                        fontFamily: signfontfam,
                                                        fontSize: signfontsize,
                                                        color: signpickerColor,
                                                        fontWeight: textBold
                                                            ? FontWeight.bold
                                                            : FontWeight.normal,
                                                        fontStyle: textItalic
                                                            ? FontStyle.italic
                                                            : FontStyle.normal,
                                                        decoration:
                                                            textunderline
                                                                ? TextDecoration
                                                                    .underline
                                                                : TextDecoration
                                                                    .none),
                                                  ),
                                                ),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                        width: mq.width * 0.15,
                                                        child: Row(
                                                          children: [
                                                            DropdownButton(
                                                              underline:
                                                                  SizedBox(),
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                              value:
                                                                  signfontfam,
                                                              icon: Icon(Icons
                                                                  .keyboard_arrow_down),
                                                              items: MyFont()
                                                                  .myfonts
                                                                  .map<
                                                                      DropdownMenuItem<
                                                                          String>>((String
                                                                      value) {
                                                                print(value);
                                                                return DropdownMenuItem<
                                                                    String>(
                                                                  value: value,
                                                                  child: Text(
                                                                    value,
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            value),
                                                                  ),
                                                                );
                                                              }).toList(),
                                                              onChanged:
                                                                  (String?
                                                                      value) {
                                                                setState(() {
                                                                  signfontfam =
                                                                      value!;
                                                                });
                                                              },
                                                            ),
                                                            DropdownButton<
                                                                String>(
                                                              underline:
                                                                  SizedBox(),
                                                              value:
                                                                  signfontsizeintxt,
                                                              onChanged: (String?
                                                                  newCategory) {
                                                                setState(() {
                                                                  if (newCategory !=
                                                                      null) {
                                                                    signfontsizeintxt =
                                                                        newCategory;
                                                                    signfontsize =
                                                                        MyFont()
                                                                            .fontsize[newCategory]!;
                                                                  }
                                                                });
                                                              },
                                                              items: MyFont()
                                                                  .fontsize
                                                                  .keys
                                                                  .map((String
                                                                      category) {
                                                                print(category);
                                                                return DropdownMenuItem<
                                                                    String>(
                                                                  value:
                                                                      category,
                                                                  child: Text(
                                                                    "${category}",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          MyFont()
                                                                              .fontsize[category],
                                                                    ),
                                                                  ),
                                                                );
                                                              }).toList(),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            textBold =
                                                                !textBold;
                                                          });
                                                        },
                                                        child: const Text(
                                                          'B',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            textItalic =
                                                                !textItalic;
                                                          });
                                                        },
                                                        child: const Text(
                                                          'I',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Serif',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            textunderline =
                                                                !textunderline;
                                                          });
                                                        },
                                                        child: const Text(
                                                          'U',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                      InkWell(
                                                          onTap: () {
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return AlertDialog(
                                                                  title: const Text(
                                                                      'Pick a color!'),
                                                                  content:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        ColorPicker(
                                                                      pickerColor:
                                                                          signpickerColor,
                                                                      onColorChanged:
                                                                          signchangeColor,
                                                                    ),
                                                                  ),
                                                                  actions: <Widget>[
                                                                    ElevatedButton(
                                                                      child: const Text(
                                                                          'Got it'),
                                                                      onPressed:
                                                                          () {
                                                                        setState(() =>
                                                                            currentColor =
                                                                                signpickerColor);
                                                                        Navigator.of(context)
                                                                            .pop();
                                                                      },
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                          },
                                                          child: const Row(
                                                            children: [
                                                              Text(
                                                                'A',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    decoration:
                                                                        TextDecoration
                                                                            .underline,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Icon(Icons
                                                                  .arrow_drop_down)
                                                            ],
                                                          )),
                                                      Icon(Icons.link),
                                                      Icon(Icons.image),
                                                      Icon(Icons
                                                          .format_align_left_rounded),
                                                      SizedBox(
                                                        width: mq.width * 0.015,
                                                        child: Image.network(
                                                            'https://cdn3.iconfinder.com/data/icons/google-material-design-icons/48/ic_format_clear_48px-512.png'),
                                                      )
                                                    ]),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                                SizedBox(
                                  height: mq.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: mq.width * 0.13,
                                    ),
                                    SizedBox(
                                      width: mq.width * 0.2,
                                      height: mq.height * 0.055,
                                      child: MaterialButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              side: BorderSide(
                                                  color:
                                                      Appcolors().tabtxtColor)),
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.add,
                                                color: Appcolors().activeColor,
                                                size: 20,
                                              ),
                                              Text(
                                                "Create",
                                                style: TextStyle(
                                                    color:
                                                        Appcolors().activeColor,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: mq.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: mq.width * 0.13,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Signature defaults',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Appcolors().secondaryColor,
                                            fontSize: 13,
                                          ),
                                        ),
                                        SizedBox(
                                          height: mq.height * 0.01,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                ReusableTextWidget(
                                                  txt: 'FOR NEW EMAILS USE',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                DropdownButton(
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                  value: no_signature,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items: DefaultDropDown()
                                                      .list
                                                      .map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                    print(value);
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(
                                                        value,
                                                      ),
                                                    );
                                                  }).toList(),
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      no_signature = value!;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: mq.width * 0.05,
                                            ),
                                            Column(
                                              children: [
                                                ReusableTextWidget(
                                                  txt: 'ON REPLY/FORWARD USE',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                DropdownButton(
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                  value: no_signature,
                                                  icon: Icon(Icons
                                                      .keyboard_arrow_down),
                                                  items: DefaultDropDown()
                                                      .list
                                                      .map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                    print(value);
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(
                                                        value,
                                                      ),
                                                    );
                                                  }).toList(),
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      no_signature = value!;
                                                    });
                                                  },
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: mq.height * 0.01,
                                        ),
                                        Row(
                                          children: [
                                            Transform.scale(
                                              scale: .8,
                                              child: Checkbox(
                                                activeColor:
                                                    Appcolors().activeColor,
                                                side: BorderSide(
                                                    color: Appcolors()
                                                        .activeColor),
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value;
                                                  });
                                                },
                                              ),
                                            ),
                                            Text(
                                                "Insert signature before the quoted text in replies, and remove the '--' line that precedes it.")
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mq.width * 0.01,
                  ),
                  Container(
                    width: mq.width * .05,
                    child: Container(
                        height: mq.width * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: mq.width * .018,
                              child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Google_Calendar_icon_%282020%29.svg/1024px-Google_Calendar_icon_%282020%29.svg.png'),
                            ),
                            SizedBox(
                              width: mq.width * .018,
                              child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/2965/2965358.png'),
                            ),
                            SizedBox(
                              width: mq.width * .018,
                              child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Google_Tasks_2021.svg/2159px-Google_Tasks_2021.svg.png'),
                            ),
                            SizedBox(
                              width: mq.width * .018,
                              child: Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Google_Contacts_icon_%282022%29.svg/423px-Google_Contacts_icon_%282022%29.svg.png'),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
