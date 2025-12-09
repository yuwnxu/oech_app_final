import 'package:flutter/material.dart';
import 'cardsettings.dart';


class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => WalletPageState();
}

class WalletPageState extends State<WalletPage> {
  bool isBalanceVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Wallet',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage:
                          AssetImage('assets/images/avatar.png'),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello Ken',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF3A3A3A),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text.rich(
                                TextSpan(
                                  text: 'Current balance: ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF3A3A3A),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: isBalanceVisible
                                          ? '₦10,712:00'
                                          : '••••••••',
                                      style: TextStyle(
                                        color: Color(0xFF0560FA),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isBalanceVisible = !isBalanceVisible;
                            });
                          },
                          icon: Icon(
                            isBalanceVisible
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: 20,
                            color: Color(0xFF3A3A3A),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E8E8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Column(
                    children: [
                      Text(
                        'Top Up',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF3A3A3A),
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _TopUpItem(title: 'Bank', iconPath: 'assets/images/bank.png', onTap: (){}),
                          _TopUpItem(title: 'Transfer', iconPath: 'assets/images/transfer.png', onTap: (){}),
                          _TopUpItem(title: 'Card', iconPath: 'assets/images/card.png', onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CardSettingsPage())
                            );}),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(height: 24),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Transaction History',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF3A3A3A),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12),

              _TransactionItem(
                amount: '-₦3,000.00',
                amountColor: Colors.red,
                title: 'Delivery fee',
                date: 'July 7, 2022',
              ),
              _TransactionItem(
                amount: '₦2,000.00',
                amountColor: Colors.green,
                title: 'Lalalalala',
                date: 'July 4, 2022',
              ),
              _TransactionItem(
                amount: '-₦3,000.00',
                amountColor: Colors.red,
                title: 'Third Delivery',
                date: 'July 1, 2022',
              ),
              _TransactionItem(
                amount: '₦1,000.00',
                amountColor: Colors.green,
                title: 'Another One',
                date: 'June 27, 2022',
              ),
              _TransactionItem(
                amount: '₦2,500.00',
                amountColor: Colors.green,
                title: 'Experts Are The Best',
                date: 'June 23, 2022',
              ),
              _TransactionItem(
                amount: '-₦3,000.00',
                amountColor: Colors.red,
                title: 'Delivery fee',
                date: 'June 17, 2022',
              ),

              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopUpItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onTap;

  const _TopUpItem({
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              iconPath,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 6),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}


class _TransactionItem extends StatelessWidget {
  final String amount;
  final Color amountColor;
  final String title;
  final String date;

  const _TransactionItem({
    required this.amount,
    required this.amountColor,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: amountColor,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF3A3A3A),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(
            height: 1,
            color: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }
}
