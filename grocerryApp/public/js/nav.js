function createNav() {
    let nav = document.querySelector('.navbar') ;

    nav.innerHTML = `
    <div class="nav">
        <img src="img/groccery_logo.png" class="brand-logo" alt="">
        <div class="nav-items">
            <div class="search">
                <input type="text" class="search-box" placeholder="search for vegetables and other products">
                <button class="search-btn">search</button>
            </div>
            <a href="#"><img src="img/profilelogo.jpg" alt=""></a>
            <a href="#"><img src="img/cartlogo.png" alt=""></a>
        </div>
   
    </div>
    <ul class="links-container">
        <li class="link-item"><a href="#" class="link">Vegetables</a></li>
        <li class="link-item"><a href="#" class="link">Fruits</a></li>
        <li class="link-item"><a href="#" class="link">Food grains and spices</a></li>
        <li class="link-item"><a href="#" class="link">Dairy </a></li>
        <li class="link-item"><a href="#" class="link">Beverages</a></li>
        <li class="link-item"><a href="#" class="link">snacks</a></li>
        <li class="link-item"><a href="#" class="link">Dry fruits</a></li>
        <li class="link-item"><a href="#" class="link">cleaning </a></li>
    </ul>
    `;
}

createNav();