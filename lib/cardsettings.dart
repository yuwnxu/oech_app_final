import 'package:flutter/material.dart';

class CardSettingsPage extends StatefulWidget {
  const CardSettingsPage({super.key});

  @override
  State<CardSettingsPage> createState() => _CardSettingsPageState();
}

class _CardSettingsPageState extends State<CardSettingsPage> {
  int _methodSelected = 0; // 0-кошелёк 1-карта
  int _cardSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            SizedBox(height: 60),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    _PaymentCard(
                      title: 'Pay with wallet',
                      subtitle: 'complete the payment using your e wallet',
                      selected: _methodSelected == 0,
                      onTap: () => setState(() => _methodSelected = 0),
                    ),
                    SizedBox(height: 12),
                    _PaymentCard(
                      title: 'Credit / debit card',
                      subtitle: 'complete the payment using your debit card',
                      selected: _methodSelected == 1,
                      onTap: () => setState(() => _methodSelected = 1),
                      child: _methodSelected == 1
                          ? Column(
                        children: [
                          SizedBox(height: 8),
                          _CardItem(
                            text: '**** **** 3323',
                            selected: _cardSelected == 0,
                            onTap: () => setState(() {
                              _methodSelected = 1;
                              _cardSelected = 0;
                            }),
                          ),
                          SizedBox(height: 8),
                          _CardItem(
                            text: '**** **** 1547',
                            selected: _cardSelected == 1,
                            onTap: () => setState(() {
                              _methodSelected = 1;
                              _cardSelected = 1;
                            }),
                          ),
                        ],
                      )
                          : SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
            ),
            _buildBottomButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
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
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Color(0xFF0560FA),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Add Payment method',
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
    );
  }

  Widget _buildBottomButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 24),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF0560FA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          onPressed: () {

          },
          child: Text(
            'Proceed to pay',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _PaymentCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;
  final Widget? child;

  const _PaymentCard({
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio<int>(
                    value: 1,
                    groupValue: selected ? 1 : 0,
                    activeColor: Color(0xFF0560FA),
                    onChanged: (_) => onTap(),
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF000000),
                          ),
                        ),
                         SizedBox(height: 4),
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (child != null) child!,
            ],
          ),
        ),
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

   const _CardItem({
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color:  Color(0xFFF6F6F6),
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Radio<int>(
                value: 1,
                groupValue: selected ? 1 : 0,
                activeColor: Color(0xFF0560FA),
                onChanged: (_) => onTap(),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Icon(
                Icons.delete_outline,
                color: Colors.red,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
