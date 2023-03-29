<template>
    <a-menu class="navbar" mode="horizontal" :default-selected-keys="[current]">
    <a-menu-item class="logo">
        <a href="/">
          insert <span>logo_</span>
        </a>
    </a-menu-item>
    <a-menu-item key="home">
        <nuxt-link to="/"> <a-icon type="home"/>Home</nuxt-link>
    </a-menu-item>
    <a-menu-item key="about">
        <nuxt-link to="/"><a-icon type="smile"/>About Me</nuxt-link>
    </a-menu-item>
    <a-menu-item key="skills">
         <nuxt-link to="/"><a-icon type="code"/>Skills</nuxt-link>
    </a-menu-item>
    </a-menu>
  </template>
  
  <script>
  export default {
    data() {
      return {
        current: 'home',
      }
    },

  }
  </script>
  
  <style>
span {
    color: blue;
}

.ant-menu {
    color: black;
    display: flex;
    justify-content: right;
} 

  </style>
  