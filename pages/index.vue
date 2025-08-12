<template>
  <div class="bg-[#110E09]">
    <Navbar />
    <Hero />
    <About />
    <div class="h-[817.48px] md:h-[600px] lg:h-[800px]">
      <AboutContd />
    </div>
    <div class="py-12 md:py-20 lg:py-[112px]">
      <HowItWorks />
    </div>
    <div class="w-[91.79%] md:w-[91.37%] md:h-[600px] lg:max-w-[1112px] lg:h-[856px] py-12 md:py-20 lg:py-[112px] mx-auto">
      <Services />
    </div>
    <div class="py-12 md:py-20 lg:py-[112px]">
      <ForBusiness />
    </div>
    <div class="w-[91.79%] md:w-[91.37%] lg:max-w-[1112px] py-12 md:py-20 lg:py-[112px] mx-auto">
      <Testimonial />
    </div>
    <div class="w-[91.79%] md:w-[91.37%] lg:max-w-[1112px] py-12 md:pt-20 md:pb-10 lg:py-20 mx-auto">
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
