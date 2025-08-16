document.addEventListener('DOMContentLoaded', function() {
    const modal = document.createElement('div');
    modal.className = 'social-modal';
    modal.innerHTML = `
        <div class="social-modal-content">
            <h3>You want to open <span id="social-platform"></span>?</h3>
            <div class="social-modal-buttons">
                <a href="#" class="open-btn" target="_blank">Open</a>
                <a href="#" class="cancel-btn">Cancel</a>
            </div>
        </div>
    `;
    document.body.appendChild(modal);
    
    const overlay = document.createElement('div');
    overlay.className = 'modal-overlay';
    document.body.appendChild(overlay);
    
    const socialLinks = {
        email: {
            platform: 'Email',
            url: "mailto:mypostbox.sivasankar@gmail.com"
        },
        whatsapp: {
            platform: 'WhatsApp',
            url: 'https://wa.me/+917845529705'
        },
        linkedin: {
            platform: 'LinkedIn',
            url: 'https://www.linkedin.com/in/siva-sankar-sk/'
        }
    };
    
    document.querySelectorAll('.social span').forEach(span => {
        span.addEventListener('click', function() {
            const platform = this.classList[0]; // Gets 'email', 'whatsapp', or 'linkedin'
            const platformData = socialLinks[platform];
            
            document.getElementById('social-platform').textContent = platformData.platform;
            const openBtn = modal.querySelector('.open-btn');
            openBtn.href = platformData.url;
            
            modal.classList.add('active');
            overlay.classList.add('active');
        });
    });
    
    // Close modal when clicking cancel or overlay
    modal.querySelector('.cancel-btn').addEventListener('click', function(e) {
        e.preventDefault();
        modal.classList.remove('active');
        overlay.classList.remove('active');
    });
    
    overlay.addEventListener('click', function() {
        modal.classList.remove('active');
        overlay.classList.remove('active');
    });
});






// scroll to top

document.addEventListener('DOMContentLoaded', function() {
    const scrollToTop = document.getElementById('scrollToTop');
    
    // Show/hide based on scroll position
    window.addEventListener('scroll', function() {
        if (window.pageYOffset > 300) {
            scrollToTop.classList.remove('hidden');
            scrollToTop.classList.add('visible');
        } else {
            scrollToTop.classList.remove('visible');
            scrollToTop.classList.add('hidden');
        }
    });
    
    // Smooth scroll to top
    scrollToTop.addEventListener('click', function(e) {
        e.preventDefault();
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
    
    // Initialize as hidden
    scrollToTop.classList.add('hidden');
});