% --- SQUARE ---
% Area = side * side, Perimeter = 4 * side
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% --- RECTANGLE ---
% Area = width * height, Perimeter = 2 * (width + height)
rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% --- TRIANGLE ---
% Area = 1/2 * base * height
% Perimeter = a + b + c (assuming A, B, C are the three sides)
triangle(Base, VerticalHeight, SideA, SideB, SideC, Area, Perimeter) :-
    Area is 0.5 * Base * VerticalHeight,
    Perimeter is SideA + SideB + SideC.
