<template>
  <motion.div
    :initial="{ opacity: 0, y: '100px' }"
    :whileInView="{ opacity: 1, y: 0 }"
    :transition="{ duration: 1 }"
    :inViewOptions="{ once: true }"
  >
    <div class="flex justify-between">
      <div class="md:w-25 md:h-[35.1px] lg:w-[114.05px] lg:h-[40.03px]">
        <PickaLogo />
      </div>
      <div class="md:w-[47.90%] lg:w-[54.50%]">
        <h1
          class="font-bold leading-[120%] tracking-normal text-white md:text-[32px] lg:text-[56px]"
        >
          Start Delivering with Confidence
        </h1>
        <p class="leading-[150%] tracking-normal text-white md:text-sm lg:text-base md:mt-4 lg:mt-6">
          Sign up, schedule, or integrate with Picka today. Reliable. Scalable.
          Effortless.
        </p>
        <div class="flex gap-x-4 items-center md:mt-6 lg:mt-8">
          <Button
            class="h-10.5 rounded-[6px] border-[0.5px] border-[#E5E4DE] gap-x-2 hover:cursor-pointer px-3"
          >
            <span
              class="text-[13px] leading-4.5 -tracking-[0.25px] text-center text-white"
            >
              Talk to Sales
            </span>
            <Arrow :style="'fill-white'" />
          </Button>
          <Button class="h-10.5 rounded-[6px] gap-x-2 hover:cursor-pointer px-3" variant="secondary">
            <span
              class="text-[13px] leading-4.5 -tracking-[0.25px] text-center text-black"
              >Book Now</span
            >
            <Arrow :style="'fill-black'" />
          </Button>
        </div>
      </div>
    </div>
    <div class="grid grid-cols-3 gap-x-8 md:mt-20 lg:mt-16">
      <div v-for="section in sections" :key="section.id">
        <div class="text-xs leading-[140%] tracking-[4%] text-[#FF7830] lg:text-[10px]">
          {{ section.heading }}
        </div>
        <div
          :class="`text-xs leading-[140%] tracking-normal text-white ${
            listItem.id === 1 ? 'mt-2' : 'mt-1 lg:mt-[5px]'
          }`"
          v-for="listItem in section.list"
          :key="listItem.id"
        >
          {{ listItem.text }}
        </div>
      </div>
    </div>
    <div class="border-t-[0.58px] border-t-white lg:border-t mt-20"></div>
    <div class="flex justify-between items-center mt-8">
      <div class="text-base leading-[150%] tracking-normal text-white lg:text-sm">
        © 2025 Picka. All rights reserved.
      </div>
      <div class="flex gap-x-3 items-center">
        <div
          v-for="icon in icons"
          :key="icon.id"
          class="w-12.5 h-12.5 flex justify-center items-center rounded-full border border-[#FFFFFF20]"
        >
          <div class="w-4 h-4 text-white">
            <component :is="icon.icon" />
          </div>
        </div>
      </div>
    </div>
  </motion.div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import PickaLogo from "~/components/home/navbar/components/picka-logo.vue";
import Button from "~/components/ui/button/Button.vue";
import Arrow from "~/components/home/navbar/components/arrow.vue";
import FacebookIcon from "~/components/home/footer/components/facebook-icon.vue";
import InstagramIcon from "~/components/home/footer/components/instagram-icon.vue";
import YoutubeIcon from "~/components/home/footer/components/youtube-icon.vue";
import TwitterIcon from "~/components/home/footer/components/twitter-icon.vue";

const sections = [
  {
    id: 1,
    heading: "INFO",
    list: [
      { id: 1, text: "About us" },
      { id: 2, text: "Careers" },
      { id: 3, text: "Terms of service" },
      { id: 4, text: "Join as a Rider" },
    ],
  },
  {
    id: 2,
    heading: "CONTACT US",
    list: [
      { id: 1, text: "+1 (999) 999-99-99" },
      { id: 2, text: "hello@picka.com" },
    ],
  },
  {
    id: 3,
    heading: "RESOURCES",
    list: [
      { id: 1, text: "Pricing" },
      { id: 2, text: "Help center" },
      { id: 3, text: "Track delivery" },
    ],
  },
];

const icons = [
  { id: 1, icon: FacebookIcon },
  { id: 2, icon: InstagramIcon },
  { id: 3, icon: YoutubeIcon },
  { id: 4, icon: TwitterIcon },
];
</script>

<style scoped></style>
