class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        create_with_title = Movie.create(title: 'This is a title.')
        return create_with_title
    end 

    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.in_theaters?
        # in_theaters = Movie.where(in_theaters: '?')
        return in_theaters
    end 

    def self.first_movie(title='Movie_0')
        first_movie = Movie.find_by(title: 'Movie_0')
        return first_movie
    end

    def self.last_movie(title='Movie_4')
        last_movie = Movie.find_by(title: 'Movie_4')
        return last_movie
    end

    def self.movie_count
        movie_count = Movie.count
        return movie_count
    end
    
    def self.find_movie_with_id(id)
        find_movie_with_id = Movie.find_by(id: id)
        return find_movie_with_id
    end

    def self.find_movie_with_attributes(attr_name)
        find_movie_with_attributes = Movie.find_by(attr_name)
        return find_movie_with_attributes
    end

    def self.find_movies_after_2002(release_date='2003'&&'2004')
        found_movies = Movie.where('release_date > 2002')
        return found_movies
        puts found_movies
    end 
    # Book.where('id > 10')
    # && '2004').order(release_date: :desc)
    def update_with_attributes(title)
        movie = Movie.find_by(title: "Awesome Flick")
        puts movie.title
        # movie = Movie.find_by(title: "Awesome Flick")
        # update_with_attributes = Movie.find_by(title: 'Awesome Flick')
        movie.title = 'Even Awesomer Flick'
        movie.save
    end 

    def self.update_all_titles(title)
        Movie.update_all "title = 'Untitled'"
    end 
    # Book.where("LENGTH(title) > 20")

    def self.delete_by_id(id)
        delete_movie_by_id = Movie.destroy_by(id: id)
        return delete_movie_by_id
    end 

    def self.delete_all_movies
        delete_all_movies = Movie.destroy_all
        return delete_all_movies
    end 


end