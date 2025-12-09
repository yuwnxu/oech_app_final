import 'package:flutter/material.dart';
import 'receipt.dart';

class SendPackagePage extends StatefulWidget {
  const SendPackagePage({super.key});

  @override
  State<SendPackagePage> createState() => _SendPackagePageState();
}

class _SendPackagePageState extends State<SendPackagePage> {
  final originNameCtrl = TextEditingController();
  final originAddressCtrl = TextEditingController();
  final originPhoneCtrl = TextEditingController();
  final originOthersCtrl = TextEditingController();

  final packageItemsCtrl = TextEditingController();
  final packageWeightCtrl = TextEditingController();
  final packageWorthCtrl = TextEditingController();

  final List<_DestinationData> destinations = [
    _DestinationData(),
  ];

  @override
  void dispose() {
    originNameCtrl.dispose();
    originAddressCtrl.dispose();
    originPhoneCtrl.dispose();
    originOthersCtrl.dispose();
    packageItemsCtrl.dispose();
    packageWeightCtrl.dispose();
    packageWorthCtrl.dispose();
    for (final d in destinations) {
      d.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 56,
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, size: 18, color: Color(0xFF0560FA)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Send a package',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFA7A7A7),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 24),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _sectionHeader(
                            icon: Icons.my_location,
                            iconColor: Colors.lightBlue,
                            title: 'Origin Details',
                          ),
                          SizedBox(height: 8),
                          _lineField(controller: originAddressCtrl, hint: 'Adress'),
                          _lineField(controller: originNameCtrl, hint: 'State,Country'),
                          _lineField(controller: originPhoneCtrl, hint: 'Phone number'),
                          _lineField(controller: originOthersCtrl, hint: 'Others'),
                          SizedBox(height: 24),
                          ..._buildDestinationList(),
                          SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                destinations.add(_DestinationData());
                              });
                            },
                            child: Row(
                              children: [
                                Icon(Icons.add_box_outlined, size: 18, color: Colors.blue),
                                SizedBox(width: 6),
                                Text(
                                  'Add destination',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24),
                          Text(
                            'Package Details',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 12),
                          _lineField(
                            controller: packageItemsCtrl,
                            hint: 'package items',
                          ),
                          _lineField(
                            controller: packageWeightCtrl,
                            hint: 'Weight of them(kg)',
                          ),
                          _lineField(
                            controller: packageWorthCtrl,
                            hint: 'Worth of items',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select delivery type',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => Receipt(),
                                      ),
                                    );
                                  },
                                  child: _primaryButton(
                                    icon: Icons.access_time,
                                    text: 'Instant delivery',
                                    selected: true,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: _primaryButton(
                                  icon: Icons.calendar_month_outlined,
                                  text: 'Scheduled delivery',
                                  selected: false,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDestinationList() {
    final widgets = <Widget>[];
    for (int i = 0; i < destinations.length; i++) {
      final data = destinations[i];
      widgets.addAll([
        if (i == 0) SizedBox(height: 8) else SizedBox(height: 24),
        _sectionHeader(
          icon: Icons.location_on,
          iconColor: Colors.blue,
          title: 'Destination Details',
        ),
        SizedBox(height: 12),
        _lineField(
          controller: data.addressCtrl,
          hint: 'Adderess',
        ),
        _lineField(
          controller: data.nameCtrl,
          hint: 'State,Country',
        ),
        _lineField(
          controller: data.phoneCtrl,
          hint: 'Phone number',
        ),
        _lineField(
          controller: data.othersCtrl,
          hint: 'Others',
        ),
      ]);
    }
    return widgets;
  }
}

class _DestinationData {
  final addressCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final othersCtrl = TextEditingController();
  final nameCtrl = TextEditingController();

  void dispose() {
    addressCtrl.dispose();
    phoneCtrl.dispose();
    othersCtrl.dispose();
    nameCtrl.dispose();
  }
}

Widget _sectionHeader({
  required IconData icon,
  required Color iconColor,
  required String title,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(icon, color: iconColor, size: 16),
      SizedBox(width: 6),
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    ],
  );
}

Widget _lineField({
  required TextEditingController controller,
  required String hint,
}) {
  return Column(
    children: [
      SizedBox(height: 4),
      TextField(
        controller: controller,
        style: TextStyle(fontSize: 13),
        decoration: InputDecoration(
          isDense: true,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 6),
        ),
      ),
      Divider(height: 1, color: Color(0xFFE0E0E0)),
    ],
  );
}

Widget _primaryButton({
  required IconData icon,
  required String text,
  required bool selected,
}) {
  final bgColor = selected ? Color(0xFF0069FF) : Colors.white;
  final borderCol = selected ? Color(0xFF0069FF) : Color(0xFFE0E0E0);
  final fgColor = selected ? Colors.white : Colors.black87;

  return Container(
    height: 80,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: borderCol),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 22,
          color: fgColor,
        ),
        SizedBox(height: 6),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: fgColor,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}
