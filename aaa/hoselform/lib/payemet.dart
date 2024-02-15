import 'package:flutter/material.dart';
import 'package:hoselform/welcome.dart';



class PaymentOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   title: Text('Payment Options'),
      // ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Text("Select your payment method",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              PaymentOptionTile(
                icon: Icons.credit_card,
                label: 'Credit Card',
                onTap: () {
                  // Handle credit card selection
                },
              ),
              PaymentOptionTile(
                icon: Icons.credit_card,
                label: 'Debit Card',
                onTap: () {
                  // Handle debit card selection
                },
              ),
              PaymentOptionTile(
                icon: Icons.payment,
                label: 'PayPal',
                onTap: () {
                  // Handle PayPal selection
                },
              ),
              PaymentOptionTile(
                icon: Icons.account_balance,
                label: 'Bank Transfer',
                onTap: () {
                  // Handle bank transfer selection
                },
              ),
              Divider(),
              Text("UPI"),
               PaymentOptionTile(
                icon: Icons.monetization_on,
                label: 'Gpay',
                onTap: () {
                  // Handle bank transfer selection
                },
              ),
               PaymentOptionTile(
                icon: Icons.attach_money_sharp,
                label: 'phone pay',
                onTap: () {
                  // Handle bank transfer selection
                },
              ),
               PaymentOptionTile(
                icon: Icons.attach_money_sharp,
                label: 'Paytm',
                onTap: () {
                  // Handle bank transfer selection
                },
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome(),));
                
              }, child: Text("Success"))
              
              
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentOptionTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const PaymentOptionTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      onTap: onTap,
    );
  }
}