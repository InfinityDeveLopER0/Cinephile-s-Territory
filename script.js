// Initialize Lucide icons
lucide.createIcons();

// Smooth scroll functionality
function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    section.scrollIntoView({ behavior: 'smooth' });
}

// Modal functionality
const modal = document.getElementById('authModal');
const formsContainer = document.querySelector('.forms-container');
let isRegisterForm = false;

function openModal(showRegister = false) {
    modal.classList.add('open');
    if (showRegister) {
        switchForm(true, false);
    }
}

function closeModal() {
    modal.classList.remove('open');
    // Reset to login form after closing
    setTimeout(() => {
        switchForm(false, false);
    }, 300);
    // Reset forms
    document.getElementById('loginForm').reset();
    document.getElementById('registerForm').reset();
    document.getElementById('passwordError').textContent = '';
}

function switchForm(toRegister, animate = true) {
    isRegisterForm = toRegister;
    formsContainer.style.transition = animate ? 'transform 0.5s ease-in-out' : 'none';
    formsContainer.style.transform = toRegister ? 'translateX(-100%)' : 'translateX(0)';
}

// Form handling
function handleLogin(event) {
    event.preventDefault();
    const form = event.target;
    const email = form.querySelector('input[type="email"]').value;
    const password = form.querySelector('input[type="password"]').value;
    
    // Add your login logic here
    console.log('Login:', { email, password });
}

function handleRegister(event) {
    event.preventDefault();
    const form = event.target;
    const name = form.querySelector('input[name="name"]').value;
    const email = form.querySelector('input[name="email"]').value;
    const password = form.querySelector('input[name="password"]').value;
    const confirmPassword = form.querySelector('input[name="confirmPassword"]').value;
    const errorElement = document.getElementById('passwordError');
    
    // Password validation
    if (password !== confirmPassword) {
        errorElement.textContent = 'Passwords do not match';
        return;
    }
    
    errorElement.textContent = '';
    
    // Add your registration logic here
    console.log('Register:', { name, email, password });
}

// Password confirmation validation
const registerForm = document.getElementById('registerForm');
const passwordInput = registerForm.querySelector('input[name="password"]');
const confirmPasswordInput = registerForm.querySelector('input[name="confirmPassword"]');
const errorElement = document.getElementById('passwordError');

function validatePasswords() {
    if (confirmPasswordInput.value && passwordInput.value !== confirmPasswordInput.value) {
        errorElement.textContent = 'Passwords do not match';
        confirmPasswordInput.setCustomValidity('Passwords do not match');
    } else {
        errorElement.textContent = '';
        confirmPasswordInput.setCustomValidity('');
    }
}

passwordInput.addEventListener('input', validatePasswords);
confirmPasswordInput.addEventListener('input', validatePasswords);

// Close modal when clicking outside
modal.addEventListener('click', (e) => {
    if (e.target === modal) {
        closeModal();
    }
});