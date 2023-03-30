<template>
  <a-layout-content>
    <div class="skillsContainer">
      <div class="skillsContent" style=" padding: 20px;">
        <a-row :gutter="16">
          <template v-for="(skill, index) in skills">
            <a-col :xs="24" :sm="12" :md="8" :lg="6" :xl="4">
              <a-card :hoverable="true" :title="skill.title" :key="index">
                <p>{{ skill.content }}</p>
              </a-card>
            </a-col>
          </template>
        </a-row>
      </div>
    </div>
  </a-layout-content>
</template>

<script>
export default {
  data() {
    return {
      skills: [
        {
          title: 'C',
          content: 'C is a programming language used for system programming and embedded system',
        },
        {
          title: 'Python',
          content: 'Python is a high-level language often used for data analysis and scripting',
        },
      
        {
          title: 'HTML',
          content: 'HTML and CSS are markup languages used for creating web pages',
        },
        {
          title: 'CSS',
          content: 'HTML and CSS are markup languages used for creating web pages',
        },
        {
          title: 'JavaScript',
          content: 'JavaScript is a high-level dynamic scripting language used for web development',
        },
        {
          title: 'Vue.js',
          content: 'Vue.js is a progressive JavaScript framework used for building user interfaces.',
        },
      ],
    };
  },
};
</script>

<style >
.skillsContainer {
  display: flex;
  min-height: 100vh;
  flex-direction: column;
  justify-content: center;
  align-content: center;
}
.skillsContent {
  flex-direction: column;
} 
</style>
