<template>
  <div id="app" class="has-background-light">
    <section class="hero is-fullheight is-desktop">
      <div class="hero-body">
        <div class="container">
        
          <Quotes  />
        
      </div>
      
      </div>
      <Footer/>
    </section>
  </div>
</template>

<script>
import Quotes from "./components/Quotes.vue";
import Footer from "./components/Footer.vue";

export default {
  name: "app",
  components: {
    Quotes,
    Footer
  }
};
</script>

<style>
#app {
  font-family: "Springsteel Serif", Helvetica, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  height: 100%;
}
</style>
