<template>

    
    <a-menu class="navbar" mode="horizontal" :default-selected-keys="[current]">
    <a-menu-item class="logo">
        <a href="/">
          insert <span>logo_</span>
        </a>
    </a-menu-item>
    <a-menu-item key="home" @click="scrollTo('home-section')">
        <nuxt-link to="/"> <a-icon type="home"/>Home</nuxt-link>
    </a-menu-item>
    <a-menu-item key="about" @click="scrollTo('about-section')">
        <nuxt-link to="/"><a-icon type="smile"/>About Me</nuxt-link>
    </a-menu-item>
    <a-menu-item key="skills" @click="scrollTo('skills-section')">
         <nuxt-link to="/"><a-icon type="code"/>Skills</nuxt-link>
    </a-menu-item>
    </a-menu>
 

    
  </template>
  
  <script>
  export default {
  data() {
    return {
      current: 'home',
    };
  },
  methods: {
    scrollTo(sectionId) {
      const section = document.getElementById(sectionId);
      section.scrollIntoView({ behavior: 'smooth' });
      this.current = sectionId.replace('-section', '');
    },
  },
};
</script>
  
  <style>
span {
    color: #3747d3;
}

.ant-menu {
    display: flex;
    color: black;
    justify-content: center;
    align-items: center;
} 
@media screen and (max-width: 500px) {
  li.logo.ant-menu-item {
  display: none;
}
} 


  </style>
  