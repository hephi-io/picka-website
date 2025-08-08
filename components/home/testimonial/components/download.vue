<template>
  <div class="w-full h-full md:relative md:flex md:flex-col md:justify-between lg:flex-row lg:items-center lg:py-4 lg:pr-4 lg:pl-10">
    <div class="md:absolute md:right-0 md:left-0 md:bottom-5 md:w-[94.75%] lg:static lg:w-[41.29%] md:mx-auto lg:mx-0">
      <h2
        class="font-bold leading-[100%] tracking-normal text-white md:w-[35%] md:text-[25px] lg:w-full lg:text-4xl"
      >
        Deliveries Made Effortless — Anytime, Anywhere
      </h2>
      <p class="text-base leading-[150%] tracking-normal text-white mt-4">
        Book, track, and manage deliveries in real-time—seamlessly on the web
        or via our mobile app.
      </p>
      <div class="flex items-center md:gap-x-[15.08px] lg:gap-x-4 md:mt-15 lg:mt-30">
        <AppStoreButton />
        <PlayStoreButton />
      </div>
    </div>
    <div class="overflow-hidden md:absolute md:top-5 md:right-0 md:left-0 md:w-[94.75%] md:h-[496px] md:rounded-lg lg:static lg:w-[59.42%] lg:h-full lg:rounded-xl md:mx-auto lg:m-0">
      <video 
        muted
        autoplay
        loop
        class="w-full h-full object-cover"
      >
        <source :src="DeliveryVideo" alt="">
      </video>
    </div>
  </div>
</template>

<script setup lang="ts">
import AppStoreButton from "~/components/home/testimonial/components/app-store-button.vue";
import PlayStoreButton from "~/components/home/testimonial/components/play-store-button.vue";
import DeliveryVideo from "~/assets/mp4/delivery-video.mp4";
</script>

<style scoped></style>
