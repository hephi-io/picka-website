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
    <div class="max-w-[1112px] py-[112px] mx-auto">
      <div class="h-[632px]">
        <Services />
      </div>
    </div>
    <div class="py-[112px]">
      <ForBusiness />
    </div>
    <div class="max-w-[1112px] py-[112px] mx-auto">
      <Testimonial />
    </div>
    <div class="max-w-[1112px] py-20 mx-auto">
      <Footer />
    </div>
  </div>
</template>

<script setup lang="ts">
import Navbar from "~/components/home/navbar/index.vue";
import Hero from "~/components/home/hero/index.vue";
import About from "~/components/home/about/index.vue";
import AboutContd from "~/components/home/about-contd/index.vue";
import HowItWorks from "~/components/home/how-it-works/index.vue";
import Services from "~/components/home/services/index.vue";
import ForBusiness from "~/components/home/for-business/index.vue";
import Testimonial from "~/components/home/testimonial/index.vue";
import Footer from "~/components/home/footer/index.vue";
</script>

<style scoped></style>
