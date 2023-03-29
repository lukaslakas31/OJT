<template>
    <a-menu class="navbar" mode="horizontal" :default-selected-keys="[current]">
    <a-menu-item class="logo">
        <a href="/">
          insert logo_
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
.logo {
    float: left;
    position: fixed;
}
.ant-menu {
    display: flex;
    justify-content: right;
} 

  </style>
  