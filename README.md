# Flutter: Working with widgets batch one
### Absorb Pointer : 
This widget will disable the touch functionality for it’s child widgets. Suppose if we mention a column or container widget as a child to Absorb Pointer widget, then we won’t get any touch events inside that column or container, even button clicks also don’t work. We need to set absorbing property to true, to achieve this.

### Ignore Pointer : 
This widget will disable the touch functionality for it’s child widgets. Suppose if we mention a column or container widget as a child to Absorb Pointer widget, then we won’t get any touch events inside that column or container, even button clicks also don’t work. We need to set ignoring property to true, to achieve this.
###### The difference between absorb and Ignore is, Ignore pointer is invisible to hit testing and Absorb Pointer is visible to hit testing.

### Alert Dialog :
If we want to show/tell something to user, then we can use this type of widget, which will be displayed in the center of screen with a overlay. We can even render some input forms in the content and buttons in the actions also.

### Align Widget :
We can align(place) or fix the position of a widget using this align widget. This widget will have a child and have a property of align. This align property can used in three different ways.

    1. Alignment.topCenter, Alignment.topLeft, Alignment.bottomRight, like this, we can place the child widget in 9 places inside a container.
    2. Using Alignment class, this will take x and y coordinates. This is similar to a graph with origin in the center point and x axis with values -1, 0 and 1. Also y axis with values -1, 0 and 1. So we can place the child widget wherever we want using this coordinates. If the coordinates are 0 and 0, the child widget will be placed in center place.
    3. FractionallySizedBox class, this will also take x and y coordinates and works like graph, the only difference is, this graph starting is top left corner. So to place the child widget in the center, we need to pass coordinates as 0.5 and 0.5.  If we pass 0 and 0, the child widget will be positioned in top left corner.

### Aspect Ratio :
If we want to keep width and height of the widget in ratio with each other, then can mention that widget as child widget to aspect ratio widget. If the aspect ratio is 3/2 then the width is 3 parts and height is 2 parts. We can mention aspect ratio in decimal points also. Like if the aspect ratio is 1.5 then it is same as 3/2. The property for mentioning aspect ratio of both these values is aspectRatio.


### Backdrop Filter:
If we want to highlight a certain widget and need to blur all other, then we can use backdrop filter widget. The child of this widget will be highlighted and all other widgets rendered before this widget in the screen will be blurred, using filter property with ImageFilter.blur as class to it. This can be very useful, when we offer premium content in the blogging concept, where we can dispay the actual content with blur and can show a normal text widget as child to backdrop filter as "Unlock Now", only unlock now will be displayed. Remember all other widgets rendered in the screen will be blurred except child widget of this widget.


### Baseline Widget:
This works same as align widget, but we can't place a widget anywhere we want using this. We can only place a widget using a baseline. Suppose if we have a container with height 100, then we added a child widget to it and set baseline as 50, then the widget will be positioned at 50px from the top left. Baseline means, we can place the widget in a horizantal line.
Baseline Widget place Shifts the child down such that the child’s baseline is baseline logical pixels below the top of this box, then sizes this box to contain the child.



--
--
--
 

# Flutter Info:
## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
