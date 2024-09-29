<template>
  <Header />
  <Hero />
  <WhoWeAre />
  <OurServices />
  <Faqs />
  <CallToAction />
  <Footer />
</template>

<script setup>
import Header from "~/components/home/header.vue";
import Hero from "~/components/home/hero";
import WhoWeAre from "~/components/home/who-we-are.vue";
import OurServices from "~/components/home/our-services.vue";
import Faqs from "~/components/home/faqs/index.vue";
import CallToAction from "~/components/home/call-to-action.vue";
import Footer from "~/components/home/footer.vue";
</script>

<style lang="scss" scoped></style>
