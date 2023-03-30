<template>
    <a-layout-content>
      <div class="aboutContainer">
        <div class="aboutContent">
          <h1><span>About </span> Me:</h1>
          <ul>
             <li v-for="(item, index) in items" :key="index"> {{ item }} </li>
          </ul>
          <div class="button">
                <a-button @click="MoreButton"> More Info! </a-button>
             </div>
        </div>
        <div class="aboutImage">
          <img src="@/static/images/lukas2.jpg" alt="lukas2">
        </div>

      </div>
    </a-layout-content>

  </template>
    
    <script>
    export default {
      data() {
        return {
          items: [
            'I am 23 Years Old',
            'I am into programming and an aspiring programmer',
            'I am into collecting K-pop Photocards and into K-pop Music.',
          ],
          currentItems: 0,
          isMoreInfo: false,
        };
      },
      methods: {
        MoreButton() {
          if (this.isMoreInfo) {
            this.items = [
              'I am 23 Years Old',
              'I am into programming and an aspiring programmer',
              'I am into collecting K-pop Photocards and into K-pop Music.',
            ];
            this.isMoreInfo = false;
          } else {
            this.items = [
              'My favorite anime is: One Piece (1997)',
              'My favorite food is: Katsudon',
              'My favorite series is: The Last Of Us (2023)',
              'My favorite movie is: BTS the Movie',
            ];
            this.isMoreInfo = true;
          }
        },
      },
    };
    </script>
    
  <style>
  .aboutContent span {
    color: #ff2b63;
  }
  .aboutContainer {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
  }
  .aboutContent h1 {
    font-size: 3em;
  }
  .aboutContent ul{
      color: black;
      font-size: 2em;
  }
  .aboutContent {
    display: flex;
    justify-content: center;
    flex-direction: column;
    margin-left: 300px;
  }
  .aboutImage{
    margin-left: 300px;
    display: flex;  
  }
  .aboutImage img {
    max-width: 50%;
  }
  @media screen and (max-width: 719px) {
  .aboutContainer {
    flex-direction: column;
  }
  .aboutContent{
    margin-left: 0px;
  }
  .aboutImage {
    margin-left: 0px;
    justify-content: center;
    align-items: center;
  }
  .aboutContent h1 {
    font-size: 2.5em;
  }
  .aboutContent ul{
      font-size: 1.5em;
  }
} 
  </style>