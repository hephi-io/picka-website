<template>
  <div class="w-full h-full flex justify-between items-center py-4 pr-4 pl-10">
    <div class="w-[41.29%]">
      <h2
        class="font-bold text-4xl leading-[100%] tracking-normal text-white"
      >
        Deliveries Made Effortless — Anytime, Anywhere
      </h2>
      <p class="text-base leading-[150%] tracking-normal text-white mt-4">
        Book, track, and manage deliveries in real-time—seamlessly on the web
        or via our mobile app.
      </p>
      <div class="flex gap-x-4 items-center mt-[120px]">
        <AppStoreButton />
        <PlayStoreButton />
      </div>
    </div>
    <div class="w-[59.42%] h-full overflow-hidden rounded-xl">
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
