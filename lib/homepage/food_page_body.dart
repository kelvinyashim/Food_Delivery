import 'package:flutter/material.dart';
import 'package:food_delivery/widgtes/big_texts.dart';

class FoodPageView extends StatefulWidget {
  const FoodPageView({Key? key}) : super(key: key);

  @override
  State<FoodPageView> createState() => _FoodPageViewState();
}

class _FoodPageViewState extends State<FoodPageView> {
  //Now
  //A PageController is a class that controls the behavior of a page view.
  // page controller allows you to programmatically control the current page that is visible in the page view.
  //what we want to achieve is for the page view to show atleast 3/10 of the next page
  //we can do this using a parameter known as viewport
  //then we call the pagecontroller in the PageView.builder
  PageController pageController = PageController(viewportFraction: 0.86);
  @override
  Widget build(BuildContext context) {
    return Container(//itemBuilder: This is a function that will be called for each page in the view.
      // It takes two arguments: the BuildContext and the index of the current page.
        //We must specify height and width
        color: Colors.blue, //NOW THIS CONTAINER IS KNOWN AS THE PARENT CONTAINER
        //A CHILD CONTAINER TAKES UP THE WHOLE SPACE OF  THE PARENT CONTAINER
        height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,//The number of pages in the view. its index it starts from 0
          itemBuilder: (context, index){//The function that builds each page.
            // The function should return a widget that represents the current page.
        return _buildPageItem(index);

      }),
    );
  }
  Widget _buildPageItem(int index){
    //since it has a type widget . something needs to be returned
    return Stack(//A child container takes the actual space of the parent but when the child is put in a stack it takes its own height not the parents
      children: [Container(// THE CHILD CONTAINER .... now  we can make the child container only take the height 220 instead of the parent using Stack Widget
        height: 220,
        margin: EdgeInsets.only(left: 5, right: 5), //we did this to give space between the images
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          //Now we have five pages we can specify the color of each page by
          color: index.isEven? Colors.amber : Colors.blue, //WE CAN ALSO ADD IMAGES
          image: DecorationImage(
            //Now this image doesnt fit or cover the whole color we can add a property known as fit
              fit: BoxFit.cover,
              image: AssetImage("assets/image/rice.jpg")
          )
        ),
      ),
                Align(//We use align to position containers in a Stack widget
                  //it takes an arguement alignment
                  alignment: Alignment.bottomCenter,
                          child: Container(// THE CHILD CONTAINER .... now  we can make the child container only take the height 220 instead of the parent using Stack Widget
                  height: 140,
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 15), //we did this to give space between the images
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      //Now we have five pages we can specify the color of each page by
                      color: Colors.white,

                  ),
                            child: Container(
                              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                              child: Column(
                                children: [
                                  BigText(text: "Fried Rice"),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Wr
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                ),
                        ),  //Now the two containers are stacked ontop each other

            ]
            );
          }
        }
