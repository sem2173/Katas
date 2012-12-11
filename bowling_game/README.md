
The article that started it all: http://www.objectmentor.com/resources/articles/xpepisode.htm

Can be done in fairly short time. Demos the idea that it's easy to overdesign up front.

Uncle Bob and Ron Jeffries still code this as one of their primary demos. Uncle Bob's implementation nowadays looks a bit, but not terribly, different from the first.

Countless other implementations and discussions of implementations out there!

BowlingGame> score [9,0] []
9
BowlingGame> score [9,0, 6,4] []
19
BowlingGame> score [9,0, 6,4, 5] []
29
BowlingGame> score [9,0] []
9
BowlingGame> score [9,0, 6,4] []
19
BowlingGame> score [9,0, 6,4, 5,2] []
31
BowlingGame> score [9,0, 6,4, 5,2, 10] []
41
BowlingGame> score [9,0, 6,4, 5,2, 10, 7,2] []
59
BowlingGame> score [9,0, 6,4, 5,2, 10, 7,2, 10] []
69
BowlingGame> score [9,0, 6,4, 5,2, 10, 7,2, 10, 10] []
79
BowlingGame> score [9,0, 6,4, 5,2, 10, 7,2, 10, 10, 10] []
109
BowlingGame> score [9,0, 6,4, 5,2, 10, 7,2, 10, 10, 10, 6,4] []
145
BowlingGame> score [9,0, 6,4, 5,2, 10, 7,2, 10, 10, 10, 6,4, 10] []
165
BowlingGame> score [9,0, 6,4, 5,2, 10, 7,2, 10, 10, 10, 6,4, 10] [10]
165
BowlingGame> score [9,0, 6,4, 5,2, 10, 7,2, 10, 10, 10, 6,4, 10] [10,2]
177                                                   

