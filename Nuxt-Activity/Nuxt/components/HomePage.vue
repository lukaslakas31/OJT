<template>
    <a-layout-content>
      <div class="homeContainer">
        <div class="homeContents"> 
          <div class="homeContents2">
            <h1> Luke Juniel M. Galicia </h1>
          <h2> <span> {{autoTyped}} </span> </h2>
          <p> this is my portfolio Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
            Ipsam id sequi cupiditate quis eum quibusdam esse veniam est delectus blanditiis.</p>
              <div class="icon">
                
                <a href="https://www.facebook.com/LJMG31"  target="_blank"> <a-icon style="color:black; font-size:x-large" type="facebook"/> </a>
                <a href="https://www.linkedin.com/in/luke-galicia-b01b721b5/" target="_blank"> <a-icon style="color:black; font-size:x-large" type="linkedin"/> </a>
                <a href="https://github.com/lukaslakas31" target="_blank"> <a-icon style="color:black; font-size:x-large"  type="github"/> </a>
              </div>
          </div>
          <div class="homeContents3">
            <img src="@/static/images/try.png" alt="Seeun">
          </div>
        </div>
      </div>
    </a-layout-content>

</template>
  
<script>
export default {
  data () {
    return {
      text: ["Computer Science", "TUP Manila", "CCCI Student Intern"],
      currentText:0,  
      typedChars: 0
  };
},
computed: {
  autoTyped() {
    return this.text[this.currentText].slice(0, this.typedChars);
  },
},
mounted (){
  const timer = setInterval(() => {
    if (this.typedChars < this.text[this.currentText].length) {
      this.typedChars++;
    } else {
        this.currentText = (this.currentText + 1) % this.text.length;
        this.typedChars = 0;
      } 
      }, 250);
      this.$once("hook:beforeDestroy", () => clearInterval(timer));
},
};
</script>

<style>
.homeContainer h1 {
  font-size: 5rem;
  color: black;
}
.homeContainer h2 {
  font-size: 3rem;
  color: black;
}


.icon {
  display: flex;
  justify-content: space-evenly;
}
.homeContents {

  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;

}
@media screen and (max-width: 719px) {
  .homeContents {
    flex-direction: column;
  }
  .homeContents3 {
    justify-content: center;
    align-items: center;
  }
} 
  
/* text */
.homeContents2 {
  display: flex;
  justify-content: center;
  flex-direction: column;
}
/* image */
.homeContents3 {

  display: flex;
  
}
</style>
  