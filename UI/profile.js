// Sample data for movies
const favoriteMovies = [
    { 
        id: 1, 
        title: "Inception", 
        year: 2010, 
        rating: 4.8, 
        poster: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@.V1.jpg" 
    },
    { 
        id: 2, 
        title: "The Shawshank Redemption", 
        year: 1994, 
        rating: 4.9, 
        poster: "https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@.V1.jpg" 
    },
    { 
        id: 3, 
        title: "The Dark Knight", 
        year: 2008, 
        rating: 4.7, 
        poster: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@.V1.jpg" 
    },
    { 
        id: 4, 
        title: "Pulp Fiction", 
        year: 1994, 
        rating: 4.6, 
        poster: "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@.V1.jpg" 
    },
    { 
        id: 5, 
        title: "Forrest Gump", 
        year: 1994, 
        rating: 4.5, 
        poster: "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@.V1.jpg" 
    },
    { 
        id: 6, 
        title: "La La Land", 
        year: 2016, 
        rating: 4.4, 
        poster: "https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@.V1.jpg" 
    }
];

const recommendedMovies = [
    { 
        id: 7, 
        title: "Interstellar", 
        year: 2014, 
        rating: 4.7, 
        poster: "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@.V1.jpg" 
    },
    { 
        id: 8, 
        title: "Parasite", 
        year: 2019, 
        rating: 4.6, 
        poster: "https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@.V1.jpg" 
    },
    { 
        id: 9, 
        title: "The Godfather", 
        year: 1972, 
        rating: 4.9, 
        poster: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@.V1.jpg" 
    },
    { 
        id: 10, 
        title: "Whiplash", 
        year: 2014, 
        rating: 4.5, 
        poster: "https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@.V1.jpg" 
    },
    { 
        id: 11, 
        title: "The Matrix", 
        year: 1999, 
        rating: 4.7, 
        poster: "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@.V1.jpg" 
    },
    { 
        id: 12, 
        title: "The Silence of the Lambs", 
        year: 1991, 
        rating: 4.6, 
        poster: "https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@.V1.jpg" 
    }
];

const userReviews = [
    {
        id: 1,
        movieId: 1,
        movieTitle: "Inception",
        poster: "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@.V1.jpg",
        date: "October 15, 2023",
        rating: 4.8,
        text: "A mind-bending masterpiece that challenges the concepts of reality and dreams. Christopher Nolan's direction is impeccable, and the visuals are stunning."
    },
    {
        id: 2,
        movieId: 3,
        movieTitle: "The Dark Knight",
        poster: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@.V1.jpg",
        date: "September 3, 2023",
        rating: 4.7,
        text: "Heath Ledger's performance as the Joker is legendary. This film transcends the superhero genre and becomes a gripping crime drama with complex themes."
    },
    {
        id: 3,
        movieId: 8,
        movieTitle: "Parasite",
        poster: "https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@.V1.jpg",
        date: "August 20, 2023",
        rating: 4.6,
        text: "A brilliant social commentary wrapped in a thrilling narrative. The film smoothly transitions between genres while maintaining its core message about class inequality."
    }
];

// DOM elements
document.addEventListener('DOMContentLoaded', () => {
    // Tab elements
    const tabButtons = document.querySelectorAll('.tab-btn');
    const tabContents = document.querySelectorAll('.tab-content');
    const favoriteMoviesGrid = document.querySelector('#favorites .movie-grid');
    const recommendedMoviesGrid = document.querySelector('#recommendations .movie-grid');
    const reviewsList = document.querySelector('.reviews-list');
    
    // Sidebar elements
    const sidebarToggle = document.querySelector('.sidebar-toggle');
    const sidebar = document.querySelector('.sidebar');
    const mainContent = document.querySelector('.main-content');

    // Check if sidebar should be visible based on screen size
    function checkSidebarState() {
        if (window.innerWidth >= 768) {
            sidebar.classList.add('active');
            mainContent.classList.add('sidebar-active');
        } else {
            sidebar.classList.remove('active');
            mainContent.classList.remove('sidebar-active');
        }
    }

    // Initialize sidebar state
    checkSidebarState();

    // Update sidebar state on window resize
    window.addEventListener('resize', checkSidebarState);

    // Sidebar toggle functionality
    sidebarToggle.addEventListener('click', () => {
        sidebar.classList.toggle('active');
        mainContent.classList.toggle('sidebar-active');
    });

    // Populate favorite movies
    populateMovieGrid(favoriteMoviesGrid, favoriteMovies);
    
    // Populate recommended movies
    populateMovieGrid(recommendedMoviesGrid, recommendedMovies);
    
    // Populate reviews
    populateReviews(reviewsList, userReviews);

    // Tab switching functionality
    tabButtons.forEach(button => {
        button.addEventListener('click', () => {
            // Remove active class from all buttons and hide all content
            tabButtons.forEach(btn => btn.classList.remove('active'));
            tabContents.forEach(content => content.style.display = 'none');
            
            // Add active class to clicked button and show corresponding content
            button.classList.add('active');
            const tabId = button.getAttribute('data-tab');
            document.getElementById(tabId).style.display = 'block';
        });
    });
});

// Function to create and populate movie grid
function populateMovieGrid(gridElement, movies) {
    gridElement.innerHTML = '';
    
    movies.forEach(movie => {
        const movieCard = document.createElement('div');
        movieCard.className = 'movie-card';
        
        movieCard.innerHTML = `
            <img src="${movie.poster}" alt="${movie.title}" class="movie-poster">
            <div class="movie-info">
                <div class="movie-title">${movie.title}</div>
                <div class="movie-year">${movie.year}</div>
                <div class="movie-rating">
                    <span class="stars">★</span>
                    <span>${movie.rating}</span>
                </div>
            </div>
        `;
        
        gridElement.appendChild(movieCard);
    });
}

// Function to populate reviews
function populateReviews(reviewsElement, reviews) {
    reviewsElement.innerHTML = '';
    
    reviews.forEach(review => {
        const reviewItem = document.createElement('div');
        reviewItem.className = 'review-item';
        
        reviewItem.innerHTML = `
            <div class="review-movie">
                <img src="${review.poster}" alt="${review.movieTitle}">
                <div class="review-movie-info">
                    <h3>${review.movieTitle}</h3>
                    <div class="review-date">${review.date}</div>
                </div>
            </div>
            <div class="review-rating">
                <span class="stars">★</span>
                <span>${review.rating}</span>
            </div>
            <p class="review-text">${review.text}</p>
        `;
        
        reviewsElement.appendChild(reviewItem);
    });
}

// Edit profile button - This would typically open a modal or navigate to an edit page
document.addEventListener('DOMContentLoaded', () => {
    const editProfileButton = document.querySelector('.edit-profile');
    if (editProfileButton) {
        editProfileButton.addEventListener('click', () => {
            alert('Edit profile functionality would go here!');
        });
    }
});