// Auto-Type
var typed = new Typed(".auto-type", {
    strings: ["Computer Science", "TUP Manila", "CCCI Student Intern"],
    typeSpeed: 100,
    backSpeed: 100,
    loop: true,
  });
// console.log(typed);
  
// Animation 
const nav = document.querySelectorAll(".nav-link");

nav.forEach((item)=>{ 
    item.addEventListener("click", ()=>
    {
        let links = document.getElementById(item.getAttribute("data-link"));
        // console.log(links); 
        links.scrollIntoView({behavior: "smooth", block:"start"});
        
    });
})

// Hobbies
let hobbies = ["Collecting K-pop Photocards", "Keyboard Enthusiast", "Into Korean Music"]

for (let index = 0; index < hobbies.length; index ++ ) {
    let newLi = document.createElement("Li");
    let newText = document.createTextNode(hobbies[index]);
    newLi.appendChild(newText);
    document.getElementById("Hobbies").appendChild(newLi);
}

// Change content
let btnText = document.getElementById('btnText');
let content = document.getElementById('abtcontent');
let original = document.getElementById('abtcontent').innerHTML;
let bool =  true;

btnText.addEventListener('click', () => {
    if (bool) {
        content.innerHTML = ' <h2> More info about Me: </h2> <br> <p> Favorite Color: <span> Pink </span>  <br> Favorite Food: <span> Katsudon </span> <br> Favorite Movie: <span> Parasite </span> (2019)  <br> Favorite Series: <span> The Last of Us  </span> (2023) </p> ';
        bool = false;
    }
    else {
        bool = true;
        content.innerHTML = original;
    }
     
});

