SELECT ships.name, classes.displacement, ships.launched
FROM ships
         JOIN classes ON ships.class = classes.class AND ships.name = classes.class;