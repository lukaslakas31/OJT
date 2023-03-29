<template>
    <div>
      <select v-model="selectedMenu" @change="toggleComponent">
        <option value="">-- Select Menu --</option>
        <option value="menu1">Menu 1</option>
        <option value="menu2">Menu 2</option>
      </select>
      <div v-show="showComponent">
        <!-- Your component goes here -->
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        selectedMenu: "",
        showComponent: true,
      };
    },
    methods: {
      toggleComponent() {
        // If the selected menu value is not empty, hide the component
        if (this.selectedMenu !== "") {
          this.showComponent = false;
        } else {
          this.showComponent = true;
        }
      },
    },
  };
  </script>
  