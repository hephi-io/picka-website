<template>
  <div>
    <div class="max-w-[1112px] mx-auto">
      <FlexHeading :text="text" :heading="heading" />
    </div> 
    <div class="flex mt-16">
      <div class="flex-[11.39%]"></div>
      <div class="flex-[88.61%] h-[410px] overflow-hidden">
        <HorizontalSlide />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import HorizontalSlide from "~/components/home/how-it-works/components/horizontal-slide.vue";
import FlexHeading from "~/components/home/how-it-works/components/flex-heading.vue";

const text = "How Picka Delivers Smarter";
const heading =
  "Experience end-to-end logistics automation—from instant bookings to real-time tracking and reverse pickups.";
</script>

<style scoped></style>
