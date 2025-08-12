<template>
  <div class=" relative w-full h-full md:flex md:flex-col md:justify-between lg:flex-row lg:items-center lg:py-4 lg:pr-4 lg:pl-10">
    <div class="absolute right-0 left-0 bottom-[7.48px] w-[89.55%] md:bottom-5 md:w-[94.75%] lg:static lg:w-[41.29%] mx-auto lg:mx-0">
      <h2
        class="font-bold text-[22px] leading-[100%] tracking-normal text-white md:w-[35%] md:text-[25px] lg:w-full lg:text-4xl"
      >
        Deliveries Made Effortless — Anytime, Anywhere
      </h2>
      <p class="text-sm leading-[150%] tracking-normal text-white md:text-base mt-2 md:mt-4">
        Book, track, and manage deliveries in real-time—seamlessly on the web
        or via our mobile app.
      </p>
      <div class="flex gap-x-[7.48px] items-center md:gap-x-[15.08px] lg:gap-x-4 mt-[61px] md:mt-15 lg:mt-30">
        <div class="w-[122px] h-[38.85px] md:w-[155.48px] md:h-[49.51px]">
          <AppStoreButton />
        </div>
        <div class="w-[125px] h-[38.29px] md:w-[169.11px] md:h-[51.8px]">
          <PlayStoreButton />
        </div>
      </div>
    </div>
    <div class="absolute top-[7.48px] right-0 left-0 w-[89.55%] h-[232px] rounded-[3.74px] overflow-hidden md:top-5 md:w-[94.75%] md:h-[496px] md:rounded-lg lg:static lg:w-[59.42%] lg:h-full lg:rounded-xl mx-auto lg:m-0">
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
