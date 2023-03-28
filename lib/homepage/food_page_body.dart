        import 'package:flutter/material.dart';
        import 'package:food_delivery/colors.dart';
        import 'package:food_delivery/widgtes/big_texts.dart';
        import 'package:food_delivery/widgtes/icon_text.dart';
        import 'package:food_delivery/widgtes/small_text.dart';
        import 'package:dots_indicator/dots_indicator.dart';

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
          PageController pageController = PageController(viewportFraction: 0.86); //PageContoller gives us the page value its a method
          var currPageValue = 0.0;
          double scaleFactor = 0.8;
          double height = 220;
          @override
          void initState() {
            super.initState();
            pageController.addListener(() {//To access page we need to use the method addListener
              setState(() {
                currPageValue = pageController.page!;
                //print("$currPageValue"); with this we get the page value for each page
                //Here in the init state we initialize what the page should need
              });
            });

          }
          //Now after we leave a page we dispose it to avoid memory leak
          //we can do that using dispose()
          @override
          void dispose() {
            // TODO: implement dispose
            super.dispose();
            pageController.dispose();
          }
          @override
          Widget build(BuildContext context) {
            return Column(//WE WRAPPED THIS CONTAINER BELOW IN A COLUMN BECAUSE OF THE PAGE INDICATOR THEY ARE STACKED AGAINST EACH OTHER SO WE PUT IT IN A COLUMN
              children: [
                Container(//itemBuilder: This is a function that will be called for each page in the view.
                  // It takes two arguments: the BuildContext and the index of the current page.
                    //We must specify height and width
                    //color: Colors.blue, //NOW THIS CONTAINER IS KNOWN AS THE PARENT CONTAINER
                    //A CHILD CONTAINER TAKES UP THE WHOLE SPACE OF  THE PARENT CONTAINER
                    height: 320,
                  child: PageView.builder(
                    controller: pageController,
                      itemCount: 5,//The number of pages in the view. its index it starts from 0
                      itemBuilder: (context, index){//The function that builds each page.
                        // The function should return a widget that represents the current page.
                    return _buildPageItem(index);

                  }),
                ),
            new DotsIndicator(
            dotsCount: 5,
            position: currPageValue,
            decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              activeColor: AppColors.mainColour //To change the color we use activeColor
            ),
            ),
              ],
            );
          }
          Widget _buildPageItem(int index){//since it has a type widget . something needs to be returned
            //Now to scale an image we use an API called matrix4
            //The new keyword is to make it an object in this case an object of Matrix4
            Matrix4 matrix = new Matrix4.identity(); // It takes 3 coordinates x y z ..... y vertical x horizontal but this after we create another API
            if(index==currPageValue.floor()){// the currentPage value is a double and in our function we have a parameter of type int
              //Now we made an if statement that if index == currentPagevalue int and double cant be equal so we add a method called floor()
              //It rounds a double to a whole number
              var currScale = 1-(currPageValue-index)*(1-scaleFactor); //Scale factor here is 0.8 that means the next image should have 0.8 of its  original size
              //This code above is for the currant page value to do for the next one we add a plus 1 to the condition
              //HERE WE ADJUST THE POSITION OF THE SLIDING MOVEMENT
              var currTrans = height*(1-currScale)/2; //Now to call this we use a method called setTranslationalRaw on the matrix
              matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
            }else if(index==currPageValue.floor()+1){//THIS INDEX REFERS TO THE INCOMING ONE BECAUSE OF THE +1 IN CONDITION
              //So now this is for the next page or slide so .. Remember scaleFactor reps the next page
              var currScale = scaleFactor+(currPageValue-index+1)*(1-scaleFactor);
              //Now to see the scale we have to parse currScale to matrix but before that we call another API Matrix4.diagonal3Values
             //1 //We do this after declaring the var
              /*2*/      var currTrans = height*(1-currScale)/2;
              matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
            }
            else if(index==currPageValue.floor()-1){
              //So now this is for the next page or slide so .. Remember scaleFactor reps the next page
              var currScale = 1-(currPageValue-index)*(1-scaleFactor);
              //Now to see the scale we have to parse currScale to matrix but before that we call another API Matrix4.diagonal3Values
              //1 //We do this after declaring the var
              /*2*/      var currTrans = height*(1-currScale)/2;
              matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
            }else{
              var currScale = 0.8;
              matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, height*(1-scaleFactor)/2, 0);
            }
            //NOW WE'VE DONE THE SCALE FOR IT TO TAKE EFFECT WE WRAP OUR STACK IN A WIDGET CALLED TRANSFORM
            //it takes a property called transform then we pass the object of Matrix4
            //that is matrix

            //-----------------------------------------------------------------------------------------------------------------

            //Now the position of the slides isnt okay when we slide to the right the  scalefactors move funny
            //so we adjust that
            //First we get the height of the page in this case its 220 ....put it in a variable so we can use it anytime

            //==================================================================

            //Now we adjusted the position for the incoming one now for the previous slide
            //we use negative 1 to refer to the scale

            //==================================================================

            //NOW WE HAVE A SMOOTH SLIDE BUT THE THIRD 1 CHANGES POSITION FROM BIG TO SMALL NOW WE CAN CHANGE THAT BY
            //SETTING THE SCALE TO 0.8 AUTOMATICALLY


            return Transform(
              transform: matrix,
              child: Stack(//A child container takes the actual space of the parent but when the child is put in a stack it takes its own height not the parents
                children: [Container(// THE CHILD CONTAINER .... now  we can make the child container only take the height 220 instead of the parent using Stack Widget
                  height: 220,
                  margin: EdgeInsets.only(left: 15, right: 15), //we did this to give space between the images
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
                                    child: Container(// THE CHILD CONTAINER .... now  we can make the child container only take the height 120 instead of the parent using Stack Widget
                                       height: 120,
                                      margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black26,
                                              blurStyle: BlurStyle.normal,
                                              blurRadius: 5.0,
                                              offset: Offset(0, 5)
                                            )
                                          ]

                                      ),
                                                child: Container(
                                                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      BigText(text: "Fried Rice"),
                                                      SizedBox(height: 10),
                                                      Row(
                                                        children: [
                                                          Wrap(//we need 5 stars wrap helps us with that
                                                            //We use a method List.generate to create the star
                                                            //The wrap helps us to create multiplex of a thing in this case star
                                                            //Length is the amount of numbers
                                                            //Also wrap puts things horizontally but we can also do vertical
                                                            children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColour,)),

                                                          ),
                                                          SizedBox(width: 10),
                                                          SmallText(text: "4.7", ),
                                                          SizedBox(width: 10),
                                                          SmallText(text: "1287"),
                                                          SizedBox(width: 10),
                                                          SmallText(text: "comments")
                                                        ],
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          IconAndTextWidget(icon: Icons.circle_sharp, text: " Normal", iconColor: AppColors.iconColour1),
                                                          SizedBox(width: 10),
                                                          IconAndTextWidget(icon: Icons.location_on, text: "1.7km", iconColor: AppColors.mainColour),
                                                          SizedBox(width: 10),
                                                          IconAndTextWidget(icon: Icons.access_time_filled_rounded, text: " 32min", iconColor: AppColors.iconColour2)
                                                        ],

                                                      )

                                                    ],
                                                  ),
                                                ),

                                               ),
                                            ),  //Now the two containers are stacked ontop each other

                                  ]
                                ),
              );
                            }
                          }
