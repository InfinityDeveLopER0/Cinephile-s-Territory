// Data
const genres = [
    { id: 'action', name: 'Action', subGenres: ['Martial Arts', 'Superhero'] },
    { id: 'comedy', name: 'Comedy', subGenres: ['Romantic Comedy', 'Dark Comedy'] },
    { id: 'drama', name: 'Drama', subGenres: ['Period Drama', 'Medical Drama'] },
    { id: 'thriller', name: 'Thriller', subGenres: ['Psychological Thriller', 'Crime Thriller'] },
    { id: 'horror', name: 'Horror', subGenres: ['Supernatural', 'Psychological Horror'] },
    { id: 'romance', name: 'Romance', subGenres: ['Historical Romance', 'Contemporary Romance'] },
    { id: 'scifi', name: 'Science Fiction', subGenres: ['Space Opera', 'Cyberpunk'] },
    { id: 'animation', name: 'Animation', subGenres: ['Anime', '3D Animation'] },
    { id: 'documentary', name: 'Documentary', subGenres: ['Nature', 'Historical'] }
];

const platforms = [
    { id: 'netflix', name: 'Netflix' },
    { id: 'prime', name: 'Amazon Prime' },
    { id: 'disney', name: 'Disney+' },
    { id: 'hulu', name: 'Hulu' },
    { id: 'apple', name: 'Apple TV+' }
];

const languages = [
    { id: 'en', name: 'English' },
    { id: 'hi', name: 'Hindi' },
    { id: 'ta', name: 'Tamil' },
    { id: 'te', name: 'Telugu' },
    { id: 'es', name: 'Spanish' },
    { id: 'fr', name: 'French' }
];

// DOM Elements
const progressBar = document.getElementById('progressBar');
const genresContainer = document.getElementById('genresContainer');
const platformsContainer = document.getElementById('platformsContainer');
const languagesContainer = document.getElementById('languagesContainer');
const selectAllGenres = document.getElementById('selectAllGenres');
const clearGenres = document.getElementById('clearGenres');
const preferencesForm = document.getElementById('preferencesForm');

// State
let selectedGenres = new Set();
let selectedPlatforms = new Set();
let selectedLanguages = new Set();

// Helper function to create plus icon SVG
function createPlusIcon() {
    return `<svg class="plus-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
        <line x1="12" y1="5" x2="12" y2="19"></line>
        <line x1="5" y1="12" x2="19" y2="12"></line>
    </svg>`;
}

// Initialize UI
function initializeGenres() {
    genres.forEach(genre => {
        const genreChip = document.createElement('div');
        genreChip.className = 'selection-chip';
        genreChip.innerHTML = `
            ${genre.name}
            ${createPlusIcon()}
        `;
        
        genreChip.addEventListener('click', () => {
            genreChip.classList.toggle('selected');
            if (genreChip.classList.contains('selected')) {
                selectedGenres.add(genre.id);
            } else {
                selectedGenres.delete(genre.id);
            }
            updateProgress();
        });

        genresContainer.appendChild(genreChip);
    });
}

function initializePlatforms() {
    platforms.forEach(platform => {
        const platformChip = document.createElement('div');
        platformChip.className = 'selection-chip';
        platformChip.innerHTML = `
            <svg class="platform-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <rect x="2" y="2" width="20" height="20" rx="2.18" ry="2.18"></rect>
                <line x1="7" y1="2" x2="7" y2="22"></line>
                <line x1="17" y1="2" x2="17" y2="22"></line>
                <line x1="2" y1="12" x2="22" y2="12"></line>
                <line x1="2" y1="7" x2="7" y2="7"></line>
                <line x1="2" y1="17" x2="7" y2="17"></line>
                <line x1="17" y1="17" x2="22" y2="17"></line>
                <line x1="17" y1="7" x2="22" y2="7"></line>
            </svg>
            ${platform.name}
            ${createPlusIcon()}
        `;

        platformChip.addEventListener('click', () => {
            platformChip.classList.toggle('selected');
            if (platformChip.classList.contains('selected')) {
                selectedPlatforms.add(platform.id);
            } else {
                selectedPlatforms.delete(platform.id);
            }
            updateProgress();
        });

        platformsContainer.appendChild(platformChip);
    });
}

function initializeLanguages() {
    languages.forEach(language => {
        const languageChip = document.createElement('div');
        languageChip.className = 'selection-chip';
        languageChip.innerHTML = `
            ${language.name}
            ${createPlusIcon()}
        `;
        languageChip.dataset.id = language.id;

        languageChip.addEventListener('click', () => {
            languageChip.classList.toggle('selected');
            if (languageChip.classList.contains('selected')) {
                selectedLanguages.add(language.id);
            } else {
                selectedLanguages.delete(language.id);
            }
            updateProgress();
        });

        languagesContainer.appendChild(languageChip);
    });
}

// Event Handlers
selectAllGenres.addEventListener('click', () => {
    const chips = genresContainer.querySelectorAll('.selection-chip');
    chips.forEach(chip => {
        chip.classList.add('selected');
        selectedGenres.add(genres.find(g => g.name === chip.textContent.trim())?.id);
    });
    updateProgress();
});

clearGenres.addEventListener('click', () => {
    const chips = genresContainer.querySelectorAll('.selection-chip');
    chips.forEach(chip => {
        chip.classList.remove('selected');
    });
    selectedGenres.clear();
    updateProgress();
});

preferencesForm.addEventListener('submit', (e) => {
    e.preventDefault();

    if (selectedGenres.size === 0) {
        alert('Please select at least one genre');
        return;
    }

    const preferences = {
        genres: Array.from(selectedGenres),
        platforms: Array.from(selectedPlatforms),
        languages: Array.from(selectedLanguages)
    };

    console.log('Saving preferences:', preferences);
    // Here you would typically send the preferences to your backend
    alert('Preferences saved successfully!');
});

// Progress Bar
function updateProgress() {
    const totalSections = 3;
    let completedSections = 0;

    if (selectedGenres.size > 0) completedSections++;
    if (selectedPlatforms.size > 0) completedSections++;
    if (selectedLanguages.size > 0) completedSections++;

    const progress = (completedSections / totalSections) * 100;
    progressBar.style.width = `${progress}%`;
}

// Initialize
initializeGenres();
initializePlatforms();
initializeLanguages();
updateProgress();