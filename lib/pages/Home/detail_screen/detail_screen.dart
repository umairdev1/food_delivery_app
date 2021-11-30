import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant.dart';
import 'package:food_delivery_app/model/food_model.dart';
import 'package:food_delivery_app/pages/Home/components/bottom_bar.dart';
import 'package:food_delivery_app/pages/Home/components/enum.dart';

class DetailScreen extends StatefulWidget {
  final Product foodDetail;
  const DetailScreen({Key? key, required this.foodDetail}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor.withOpacity(0.3),
        title: Text(widget.foodDetail.title,
            style: const TextStyle(
              color: kTextGrayColor,
            )),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      bottomNavigationBar: const CustomBottomBar(selectMenu: MenuState.home),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              child: Image.asset(
                widget.foodDetail.image,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Column(
                children: [
                  Text(widget.foodDetail.description,
                      style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$${widget.foodDetail.price}",
                        style: const TextStyle(
                            color: kTextGrayColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Icon(
                        Icons.star,
                        size: 20,
                        color: kPrimaryColor,
                      ),
                      Text(
                        "${widget.foodDetail.rating}",
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Icon(Icons.remove),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                          color: kTextGrayColor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    minWidth: double.infinity,
                    height: 40,
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
