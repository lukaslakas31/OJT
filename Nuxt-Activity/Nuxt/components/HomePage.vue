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
                <nuxt-link to="facebook.com/ljmg31" target="_blank"> <a-icon style="color:black; font-size:x-large" type="facebook"/> </nuxt-link>
                <nuxt-link to="facebook.com/ljmg31" target="_blank"> <a-icon style="color:black; font-size:x-large" type="linkedin"/> </nuxt-link>
                <nuxt-link to="facebook.com/ljmg31" target="_blank"> <a-icon style="color:black; font-size:x-large"  type="github"/> </nuxt-link>
              </div>
          </div>
          <div class="homeContents3">
            <img src="@/static/try.png" alt="Seeun">
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
  /* border: 5px yellow solid; */
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
  

.homeContents2 {
  /* border: 1px red solid; */
  display: flex;
  justify-content: center;
  flex-direction: column;
}
.homeContents3 {
  display: flex;
  bottom: 900px;
  
}
</style>
  