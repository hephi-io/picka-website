<script setup>
import MapAnimation from "../../../lottie-animations/map-animation.json";
import BentoCustomers from "./components/bento-customers.vue";
</script>

<template>
  <section class="pt-16 overflow-hidden" id="home">
    <h1
      class="space-grotesk font-bold w-[300px] md:w-[400px] text-center text-[32px] leading-[40px] md:text-[48px] md:leading-[50px] text-[#1E1E1E] mx-auto"
    >
      Your
      <span class="text-[#FF7830] space-grotesk">Ultimate</span> Logistics
      Partner
    </h1>

    <p
      class="mx-auto w-[400px] md:w-[600px] text-center mt-5 md:text-lg text-[#737373]"
    >
      Experience the future of logistics with Zipkod -- delivering excellence,
      one mile at a time.
    </p>

    <a
      class="button flex md:hidden mx-auto mt-6 items-center justify-center bg-gradient-to-r from-[#FF7C33] to-[#FA3105] font-medium text-[15px] text-[#FFFAF8] rounded-full w-[125px] h-[43px]"
      href="https://app.zipkod.ng"
    >
      Get Started
    </a>

    <div
      class="flex flex-col md:flex-row gap-x-4 gap-y-5 w-[90%] xl:w-[1200px] 2xl:w-[1344px] mx-auto mt-14"
    >
      <div
        class="w-full md:w-[55%] lg:w-[60%] h-[300px] lg:h-[350px] xl:h-[450px] 2xl:h-[500px] bg-gray-100 rounded-[24px] relative"
      >
        <div class="w-[108%] h-[108%] relative">
          <img
            src="/images/hero/bike-desktop.png"
            class="w-full h-full absolute z-20 left-5 bottom-7 md:bottom-12"
          />
        </div>

        <img src="/images/hero/shadow.png" class="absolute bottom-0" />
      </div>

      <!-- gap-y-3 lg:gap-y-5 -->

      <div
        class="w-full md:w-[45%] lg:w-[40%] flex flex-col justify-between gap-y-3 lg:gap-y-0"
      >
        <div
          class="w-full h-[260px] md:h-[190px] lg:h-[245px] xl:h-[330px] 2xl:h-[370px] bg-black rounded-3xl md:rounded-2xl lg:rounded-3xl relative"
        >
          <client-only>
            <Vue3Lottie
              :animationData="MapAnimation"
              class="rounded-3xl"
              scale="1"
            />
          </client-only>
        </div>

        <bento-customers />
      </div>
    </div>
  </section>
</template>

<style scoped></style>
