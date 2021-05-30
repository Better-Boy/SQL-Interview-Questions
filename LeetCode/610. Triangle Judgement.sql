SELECT  *
       ,if(x + y > z AND y + z > x AND x + z > y,'Yes','No') triangle
FROM triangle;