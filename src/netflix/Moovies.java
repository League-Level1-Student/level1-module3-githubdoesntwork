package netflix;

public class Moovies {
public static void main(String[] args) {
	Movie movie = new Movie("Twilight Zone", 3);
	Movie moovie=new Movie("Moonlight Zone", 5);
	movie.getTicketPrice();
	movie.getRating();
	movie.getTitle();
	movie.compareTo(moovie);
}
}
