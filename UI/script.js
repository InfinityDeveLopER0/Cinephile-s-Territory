// Initialize Lucide icons
lucide.createIcons();

function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    section.scrollIntoView({ behavior: 'smooth' });
}

function openModal(showRegister = false) {
    const modal = document.getElementById('authModal');
    modal.style.display = 'flex';
    if (showRegister) {
        switchForm(true);
    }
}

function closeModal() {
    const modal = document.getElementById('authModal');
    modal.style.display = 'none';
    // Reset forms
    document.getElementById('loginForm').reset();
    document.getElementById('registerForm').reset();
    document.getElementById('passwordError').textContent = '';
}

function switchForm(showRegister) {
    const loginForm = document.querySelector('.login-form');
    const registerForm = document.querySelector('.register-form');
    
    if (showRegister) {
        loginForm.style.display = 'none';
        registerForm.style.display = 'block';
    } else {
        loginForm.style.display = 'block';
        registerForm.style.display = 'none';
    }
}

function handleLogin(event) {
    event.preventDefault();
    const form = event.target;
    const email = form.querySelector('input[type="email"]').value;
    const password = form.querySelector('input[type="password"]').value;
    
    // Add your login logic here
    console.log('Login:', { email, password });
    window.location.href = 'pref.html';
}

function handleRegister(event) {
    event.preventDefault();
    const form = event.target;
    const name = form.querySelector('input[name="name"]').value;
    const email = form.querySelector('input[name="email"]').value;
    const password = form.querySelector('input[name="password"]').value;
    const confirmPassword = form.querySelector('input[name="confirmPassword"]').value;
    const errorElement = document.getElementById('passwordError');
    
    if (password !== confirmPassword) {
        errorElement.textContent = 'Passwords do not match';
        return;
    }
    
    errorElement.textContent = '';
    console.log('Register:', { name, email, password });
    window.location.href = 'pref.html';
}

// Password validation
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
window.onclick = function(event) {
    const modal = document.getElementById('authModal');
    if (event.target === modal) {
        closeModal();
    }
}

// Re-initialize Lucide icons when the DOM content is loaded
document.addEventListener('DOMContentLoaded', function() {
    lucide.createIcons();
});