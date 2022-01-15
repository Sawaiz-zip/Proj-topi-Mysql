
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Mainscreen extends StatefulWidget {

  @override

  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  bool pressed = false;
  bool pressed1 = false;
  bool pressed2 = false;
  bool pressed3 = false;

  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 10,

        toolbarHeight: 50,

        backgroundColor: Colors.green,
        title: Text('Home'),
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.vertical(

            bottom: Radius.circular(30),
          ),
        ),

      ),

      // appBar: AppBar(
      //   shape: Shape,
      //   backgroundColor: Colors.green,
      //   // title: Text('Project Topi'),
      // ),
      body: Stack(
        //alignment: Alignment.center,
          children: <Widget>[

            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              height: _size.height,
              width: _size.width,
              color: Colors.white,

              child: Stack(
                fit: StackFit.loose,

                children: <Widget>[

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('imageAsset/projtopi.jpg'),
                          fit: BoxFit.contain,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3),
                              BlendMode.dstATop)),
                    ),
                  ),

                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Project Topi',
                              style: TextStyle(

                                color: Colors.green,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Nothing',

                              ),

                            ),
                            SizedBox(
                              height: 40,
                            ),

                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 16,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'sponsorAchild');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 20),
                                          child: Text(
                                            'Sponsor a Child',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                                backgroundColor: Colors.black54),
                                          ),
                                        ),
                                        Ink.image(
                                            image: AssetImage(
                                                'imageAsset/sponsorchild.jpg'),
                                            colorFilter: ColorFilter.mode(
                                                Colors.white, BlendMode.modulate),
                                            height: 180,
                                            fit: BoxFit.fitWidth),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              textStyle:
                                              const TextStyle(fontSize: 10),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                pressed = !pressed;
                                              });
                                            },
                                            child: const Text(
                                              'Details',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          pressed == true
                                              ? Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                  'When you chose to sponsor a child, you can consider things like the age, gender and location of the child. Once matched, you’ll receive a welcome kit that includes more information about your sponsored child, including a photo and information about how you’re changing lives in your sponsorship community',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black54)))
                                              : Text(
                                              '                                                                                                                                                                                     '),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),

                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 16,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'bimonthly');

                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 20),
                                          child: Text(
                                            'Bi-Monthly Assistance',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                                backgroundColor: Colors.black54),
                                          ),
                                        ),
                                        Ink.image(
                                            image: AssetImage(
                                                'imageAsset/bimonthly.jpg'),
                                            //colorFilter: ColorFilter.mode(
                                            //  Colors.white, BlendMode.modulate),
                                            height: 180,
                                            fit: BoxFit.fitWidth),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.zero,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              textStyle:
                                              const TextStyle(fontSize: 02),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                pressed1 = !pressed1;
                                              });
                                            },
                                            child: const Text(
                                              'Details',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          pressed1 == true
                                              ? Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                  'Similarly, funds for employees who are in dire need of domestic or medical help for treatment of either accidental injuries or surgical purposes are also provided. In addition, resources and assistance to employees’ children for fee payment to their respective schools, colleges or universities to provide for their admission needs are delivered.',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black54)))
                                              : Text(
                                              '                                                                                                                                                                                     '),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),

                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 16,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'Messbill');

                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 20),
                                          child: Text(
                                            'Mess Bill AID Programs',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                                backgroundColor: Colors.black54),
                                          ),
                                        ),
                                        Ink.image(
                                            image: AssetImage(
                                                'imageAsset/messbill.jpg'),
                                            colorFilter: ColorFilter.mode(
                                                Colors.white, BlendMode.modulate),
                                            height: 180,
                                            fit: BoxFit.fitWidth),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              textStyle:
                                              const TextStyle(fontSize: 10),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                pressed2 = !pressed2;
                                              });
                                            },
                                            child: const Text(
                                              'Details',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          pressed2 == true
                                              ? Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                  'Such initiatives are introduced to reduce the load on financially needy students and their parents by providing the monetary allowance that goes into the payment of the said student’s mess bill fee. PKR 25 is deducted from every students mess bill to raise enough funds for those students that cannot afford to pay their mess bills.'
                                                  ,  style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black54)))
                                              : Text(
                                              '                                                                                                                                                                                     '),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),

                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 16,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: InkWell(
                                onTap: () {},
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 20),
                                          child: Text(
                                            'Blood Camps',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w600,
                                                backgroundColor: Colors.black54),
                                          ),
                                        ),
                                        Ink.image(
                                            image: AssetImage(
                                                'imageAsset/bloodcamps.jpg'),
                                            colorFilter: ColorFilter.mode(
                                                Colors.white, BlendMode.modulate),
                                            height: 180,
                                            fit: BoxFit.fitWidth),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              textStyle:
                                              const TextStyle(fontSize: 10),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                pressed3 = !pressed3;
                                              });
                                            },
                                            child: const Text(
                                              'Details',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          pressed3 == true
                                              ? Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                  'With the collaborations of renonwned institutions like Rawalpindi Medical College or Red Crescent Society, a blood camps are set up within the central ground of GIKI Institute every semester. A group of doctors and paramedic staff are appointed to ensure efficient administration of the whole day’s agenda. Record breaking figure of 292 students donated blood in a matter of a few hours in 2018, followed by refreshments for the students for their selfless gifts to humanity. Due to the overwhelming response, Project Topi has consistently been accredited with free certifications, recognition in newsletters and free CPR trainings by these organizations.',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black54)))
                                              : Text(
                                              '                                                                                                                                                                                     '),
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
                    ),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
