<template>
  <div class="bg-[#110E09]">
    <Navbar />
    <Hero />
    <About />
    <Services />
  </div>
</template>

<script setup lang="ts">
import Navbar from "~/components/home/navbar/index.vue";
import Hero from "~/components/home/hero/index.vue";
import About from "~/components/home/about/index.vue";
import Services from "~/components/home/services/index.vue";
</script>

<style scoped></style>