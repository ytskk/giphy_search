# giphy

## Requirements:

#### Implement "live search" - i.e. request is sent in N milliseconds (for example 300) after the user has entered some input;
Implemented using BLoC library, bloc_concurrency and stream_transform. As user types, it starts restartable timer for 300 ms. You need to stop typing and wait 300 ms to start fetching your results. 
#### Results are displayed in the list or grid of items;
For this I chose flutter_staggered_grid_view that provides masonry grid to create interesting grid view, depends on gif image sizes. Number of columns changes depends on width of screen, for small it's 2 and for large is 4 gifs per line. 
#### Request pagination - load enough items to populate the list and load more items every time the user scrolls to the end of the list (limit/offset);
Using scroll controller callback it requesting a new page when user comming up to the end. 
#### UI can be very simple but should be responsive, snappy, and implemented according to the platform guidelines;
UI is simple and responsible. 
Bonus points will be given for:

## Bonus
#### Loading more results "seamlessly" before the user reaches the last item in the list so (at least on a decent network connection) the scrolling is not interrupted by the next page load;
To achieve this I will request new page when user remains 1200 px to end of list. User can enjoy about 4 screens of gorgeous gifts until he will go to the next page. I ran into an interesting problem and came up with an equally interesting solution. When the user uploads gifs, by default nothing is displayed instead of video without sound, literally a black screen. But actually the scroll area is rendered there and if the user scrolls, it will load a lot of pages in a row, resulting in an even longer wait. So I use placeholders, which are filled with color boxes of future gifs (the size is set from the ratio of the actual width of the card and the original width of the gif from the server, based on this ratio and calculates the future height of the gif), the more intense the color, the closer the gif to the user. 

Translated with www.DeepL.com/Translator (free version)
#### Using state management approaches or libraries such as BLoC (flutter_bloc), Riverpod or others;
BLoC
#### Separating business logic from the UI;
I do. 
#### Unit tests (we don't expect 100% coverage but rather see how do you approach unit testing)
I don't know much about tests, so I decided not to do anything nonsensical. But I caught most of the possible bugs at the development stage, honestly)

# Demo

Responsive
https://user-images.githubusercontent.com/57366771/194717472-efb72d0e-227f-4d96-b18b-13f00f2952cf.mp4

