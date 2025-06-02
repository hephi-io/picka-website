<template>
  <div class="bg-[#110E09]">
    <Navbar />
    <Hero />
    <About />
    <div class="max-w-[1312px] h-[800px] py-16 mx-auto">
      <AboutContd />
    </div>
    <div class="py-[112px]">
      <HowItWorks />
    </div>
  </div>
</template>

<script setup lang="ts">
import Navbar from "~/components/home/navbar/index.vue";
import Hero from "~/components/home/hero/index.vue";
import About from "~/components/home/about/index.vue";
import AboutContd from "~/components/home/about-contd/index.vue";
import HowItWorks from "~/components/home/how-it-works/index.vue"
</script>

<style scoped></style>
