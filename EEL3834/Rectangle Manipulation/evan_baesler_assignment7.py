class Rectangle:

     def __init__(self, x = 0, y = 0, width = 0, height = 0):
          self.__x = x
          self.__y = y
          self.__width = width
          self.__height = height

     def set_properties(self, x, y, width, height):
          if width > 0 and height > 0:
               self.__x = x
               self.__y = y
               self.__width = width
               self.__height = height
          else:
               print("Width and height must be positive.")

     def move(self, x_offset, y_offset):
          self.__x += x_offset
          self.__y += y_offset

     def resize(self, width, height):
          if width > 0 and height >0:
               self.__width = width
               self.__height = height
          else:
               print("Width and height must be positive.")

     def rotate(self):
          self.__width, self.__height = self.__height, self.__width

     def get_x(self):
          return self.__x

     def get_y(self):
          return self.__y

     def get_width(self):
          return self.__width

     def get_height(self):
          return self.__height

     def get_properties(self):
          return self.__x, self.__y, self.__width, self.__height

class ColoredRectangle(Rectangle):

    def __init__(self, x=0, y=0, width=1, height=1, color="none"):
        super().__init__(x, y, width, height)
        self._color = color

    def set_color(self, color):
        self._color = color

    def get_color(self):
        return self._color

    def get_properties(self):
        x, y, width, height = super().get_properties()
        return x, y, width, height, self._color

def setProperties(rectangles):

     while True:
          try:
               rectangleChoice = int(input("Which rectangle? (1-3): "))

               if rectangleChoice < 1 or rectangleChoice > 3:
                    print("Invalid rectangle number!")
               else:
                    break

          except ValueError:
               print("Invalid rectangle number!")

     while True:
          input_string = input("Enter x, y, width, and height: ")
          values = input_string.split()

          if len(values) < 4:
               print("Incorrect amount of inputs.")

          else:
               try:
                    x = int(values[0])
                    y = int(values[1])
                    width = int(values[2])
                    height = int(values[3])

                    if width <= 0 or height <= 0:
                         print("Width and height must be positive.")
                         continue

                    rectangle = rectangles[rectangleChoice - 1]
                    rectangle.set_properties(x, y, width, height)
                    print(f"Rectangle {rectangleChoice}'s properties are now: Corner ({x}, {y}), Width {width}, Height {height}\n")
                    break

               except ValueError:
                    print("Invalid input! Please enter numbers.")


def setColor(rectangles):
     while True:
          try:
               rectangleChoice = int(input("Which rectangle? (1-3): "))

               if rectangleChoice < 1 or rectangleChoice > 3:
                    print("Invalid rectangle number!")
               else:
                    break

          except ValueError:
               print("Invalid rectangle number!")

     rectangle = rectangles[rectangleChoice - 1]
     color = input("Enter color: ")

     if not isinstance(rectangle, ColoredRectangle):
          x = rectangle.get_x()
          y = rectangle.get_y()
          width = rectangle.get_width()
          height = rectangle.get_height()
          rectangle = ColoredRectangle(x, y, width, height, color)
          rectangles[rectangleChoice - 1] = rectangle
     else:
          rectangle.set_color(color)
     print(f"Color set to {color} for Rectangle {rectangleChoice}.\n")


def moveRectangle(rectangles):
     while True:
          try:
               rectangleChoice = int(input("Which rectangle? (1-3): "))

               if rectangleChoice < 1 or rectangleChoice > 3:
                    print("Invalid rectangle number!")
               else:
                    break

          except ValueError:
               print("Invalid rectangle number!")

     rectangle = rectangles[rectangleChoice - 1]
     while True:
          try:
               offset = input("Enter the amount to move in x and y directions: ").split(' ')
               x_offset = int(offset[0])
               y_offset = int(offset[1])
               break

          except ValueError:
               print("Invalid input! Please enter numbers only.")

     rectangle.move(x_offset, y_offset)
     print(f"Rectangle {rectangleChoice}'s new position: Corner ({rectangle.get_x()}, {rectangle.get_y()})\n")

def resizeRectangle(rectangles):
     while True:
          try:
               rectangleChoice = int(input("Which rectangle? (1-3): "))

               if rectangleChoice < 1 or rectangleChoice > 3:
                    print("Invalid rectangle number!")
               else:
                    break

          except ValueError:
               print("Invalid rectangle number!")

     rectangle = rectangles[rectangleChoice - 1]

     while True:
          try:
               rectangleWidthHeight = input("Enter the new width and height: ")
               rectangleWidthHeight = rectangleWidthHeight.split(' ')
               rectangleWidth = int(rectangleWidthHeight[0])
               rectangleHeight = int(rectangleWidthHeight[1])

               if rectangleWidth <= 0 or rectangleHeight <= 0:
                    print("Width and height must be positive.")
               else:
                    break

          except ValueError:
               print("Invalid input! Please enter numbers only.")

     rectangle.resize(rectangleWidth, rectangleHeight)
     print(f"Rectangle {rectangleChoice}'s new dimensions: Width {rectangleWidth}, Height {rectangleHeight}\n")


def rotateRectangle(rectangles):
     while True:
          try:
               rectangleChoice = int(input("Which rectangle? (1-3): "))

               if rectangleChoice < 1 or rectangleChoice > 3:
                    print("Invalid rectangle number!")
               else:
                    break

          except ValueError:
               print("Invalid rectangle number!")

     rectangle = rectangles[rectangleChoice - 1]
     rectangle.rotate()
     props = rectangle.get_properties()

     print(f"Rotating Rectangle {rectangleChoice} by 90 degrees...\n")
     if isinstance(rectangle, ColoredRectangle):
          x, y, w, h, color = props
          print(
               f"Rectangle {rectangleChoice}'s properties are now: Corner ({x}, {y}), Width {w}, Height {h}, Color {color}\n")
     else:
          x, y, w, h = props
          print(f"Rectangle {rectangleChoice}'s properties are now: Corner ({x}, {y}), Width {w}, Height {h}\n")

def printProperties(rectangles):
     while True:
          try:
               rectangleChoice = int(input("Which rectangle? (1-3): "))

               if rectangleChoice < 1 or rectangleChoice > 3:
                    print("Invalid rectangle number!")
               else:
                    break

          except ValueError:
               print("Invalid rectangle number!")

     rectangle = rectangles[rectangleChoice - 1]
     rectangleProperties = rectangle.get_properties()
     if isinstance(rectangle, ColoredRectangle):
          x, y, w, h, color = rectangleProperties
          print(f"Rectangle {rectangleChoice}: Corner ({x}, {y}), Width {w}, Height {h}, Color: {color}\n")
     else:
          x, y, w, h = rectangleProperties
          print(f"Rectangle {rectangleChoice}: Corner ({x}, {y}), Width {w}, Height {h}\n")

def main():

     rectangle1 = Rectangle(0, 0, 0, 0)
     rectangle2 = Rectangle(0, 0, 0, 0)
     rectangle3 = Rectangle(0, 0, 0, 0)
     rectangles = [rectangle1, rectangle2, rectangle3]

     while True:

          print("Menu Options:")
          print("s: Set a rectangle's properties")
          print("c: Set a rectangle's color")
          print("m: Move a rectangle")
          print("z: Resize a rectangle")
          print("p: Print a rectangle's properties")
          print("q: Quit")
          print()
          choice = input("Enter choice: ")

          if choice.lower() == "s":
               setProperties(rectangles)

          elif choice.lower() == "c":
               setColor(rectangles)

          elif choice.lower() == "m":
               moveRectangle(rectangles)

          elif choice.lower() == "z":
               resizeRectangle(rectangles)

          elif choice.lower() == "r":
               rotateRectangle(rectangles)

          elif choice.lower() == "p":
               printProperties(rectangles)

          elif choice.lower() == "q":
               print("Exiting program. Goodbye!")
               exit()

          else:
               print("That is not a valid option.\n")

main()