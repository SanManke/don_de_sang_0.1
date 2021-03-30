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
        decoration: InputDecoration(labelText: 'Beneficiary', border: OutlineInputBorder(),),
        // ignore: missing_return
        validator: (String value) {
          if(value.isEmpty){
            return 'Name is Required';
          }

          return null;
        },
        onSaved: (String value) {
          _beneficiary = value;
        }
    );
  }

  Widget _buildBloodG() {
    return TextFormField(
          decoration: InputDecoration(labelText: 'Blood Group',border: OutlineInputBorder()),
          // ignore: missing_return
          validator: (String value) {
            if(value.isEmpty){
              return 'Blood Group is Required';
            }

            return null;
          },
          onSaved: (String value) {
            _bloodG = value;
          }
    );
  }

  Widget _buildhospital() {
    return TextFormField(
          decoration: InputDecoration(labelText: 'Hospital',border: OutlineInputBorder(),),
          // ignore: missing_return
          validator: (String value) {
            if(value.isEmpty){
              return 'Hospital is Required';
            }

            return null;
          },
          onSaved: (String value) {
            _hospital = value;
          }
    );
  }

  Widget _buildname() {
    return TextFormField(
          decoration: InputDecoration(labelText: 'Name',border: OutlineInputBorder()),
          // ignore: missing_return
          validator: (String value) {
            if(value.isEmpty){
              return 'Name is Required';
            }

            return null;
          },
          onSaved: (String value) {
            _name = value;
          }
    );
  }

  Widget _buildPhone() {
    return TextFormField(
          decoration: InputDecoration(labelText: 'Phone',border: OutlineInputBorder()),
          keyboardType: TextInputType.phone,
          // ignore: missing_return
          validator: (String value) {
            if(value.isEmpty){
              return 'Phone Number is Required';
            }

            return null;
          },
          onSaved: (String value) {
            _phone = value;
          }
    );
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
        child: Form(
          key: _formKey,
          child: ListView(
         padding: EdgeInsets.all(16),
          children: [
            _buildBeneficiary(),
            SizedBox(height: 15,),
            _buildBloodG(),
            SizedBox(height: 15,),
            _buildhospital(),
            SizedBox(height: 15,),
            _buildname(),
            SizedBox(height: 15,),
            _buildPhone(),
            SizedBox(height: 50,),
            RaisedButton(
            child: Text('Submit',
            style: TextStyle(
                color: Color(0xffb60d29),
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
            ),
              onPressed: () {
              if(!_formKey.currentState.validate()){
                return;
              };

              _formKey.currentState.save();

              print(_beneficiary);
              print(_bloodG);
              print(_hospital);
              print(_name);
              print(_phone);


              },
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),

              )
            )
          ],
        ),),
      ),
    );
  }
}
