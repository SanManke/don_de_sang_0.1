import 'package:flutter/material.dart';

class Request2 extends StatefulWidget {
  @override
  _Request2State createState() => _Request2State();
}

class _Request2State extends State<Request2> {

  String _beneficiary;
  String _bloodG;
  String _hospital;
  String _name;
  String _phone;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildBeneficiary() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Beneficiary'),
      // ignore: missing_return
      validator: (String value) {
        if(value.isEmpty){
          return 'Text is Required';
        }
      },
      onSaved: (String value) {
        _beneficiary = value;
      }
    );
  }

  Widget _buildBloodG() {
    return null;
  }

  Widget _buildhospital() {
    return null;
  }

  Widget _buildname() {
    return null;
  }

  Widget _buildPhone() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xffb60d29),
    title: Text('Request'),
        ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildBeneficiary(),
           // _buildBloodG(),
            //_buildhospital(),
            //_buildname(),
            //_buildPhone(),
            SizedBox(height: 100,),
            RaisedButton(
            child: Text('Submit'),
              onPressed: () => {},
        )

          ],
        ),),
      ),
    );
  }
}
