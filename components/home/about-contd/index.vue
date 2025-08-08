<template>
  <motion.div 
    class="relative w-full h-full" 
    initial="start" 
    whileInView="end"
    :inViewOptions="{ once: true }"
  >
    <motion.div
      class="absolute top-0 right-0 left-0 z-10 w-[91.11%] h-full flex flex-col justify-between lg:max-w-[1312px] py-20 lg:py-16 mx-auto"
      :variants="wrapperVariants"
    >
      <motion.div :variants="containerVariants">
        <div class="flex justify-between items-start">
          <div
            class="border-white bg-[#FF7C33] md:w-[96.93px] md:h-[103.41px] md:rounded-[13.9px] md:border-[0.17px] lg:w-[167.36px] lg:h-[178.56px] lg:rounded-3xl lg:border-[0.3px] md:p-[3.47px] lg:p-[6px]"
          >
            <MapImage />
          </div>
          <h1
            class="font-bold tracking-[0%] align-middle text-[#F0F0F0] md:w-[34.34%] md:text-[32px] md:leading-8.5 lg:w-[33.15%] lg:text-[56px] lg:leading-[100%]"
          >
            Move Anything. Anywhere. Effortlessly.
          </h1>
        </div>
        <h3
          class="w-[34.34%] font-medium leading-[100%] tracking-[0%] align-middle text-[#F0F0F0] md:text-[11.58px] lg:text-xl mt-20"
        >
          Picka makes every movement smarter, with real-time tracking, flexible
          options, and scalable tech at its core.
        </h3>
        <div class="w-fit h-[42px] md:mt-[23.17px] lg:mt-10">
          <Button
            class="group gap-x-2 rounded-md border-[0.5px] border-[#E5E4DE] hover:bg-[#E5E4DE]"
            variant="ghost"
          >
            <span
              class="text-[13px] leading-[18px] -tracking-[0.25px] text-center text-white group-hover:text-black"
            >
              Get Started
            </span>
            <Arrow :style="'fill-white group-hover:fill-black'" />
          </Button>
        </div>
      </motion.div>
      <motion.div 
        class="flex justify-between items-center"
        :variants="containerVariants"
      >
        <p
          class="tracking-[0%] align-middle text-[#F0F0F0] md:text-[10px] md:leading-[13.9px] lg:text-base lg:leading-6"
        >
          Available in Lagos
        </p>
        <div class="flex items-center md:gap-x-[4.63px] lg:gap-x-2">
          <Seperator styles="fill-white" />
          <span
            class="tracking-[0%] align-middle text-[#F0F0F0] md:text-[9.27px] md:leading-[13.9px] lg:text-base lg:leading-6"
          >
            Scroll
          </span>
        </div>
      </motion.div>
    </motion.div>
    <div class="w-full h-full overflow-hidden">
      <EnlargingVideo />
    </div>
  </motion.div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import MapImage from "~/components/home/about-contd/components/map-image.vue";
import Button from "~/components/ui/button/Button.vue";
import Arrow from "~/components/home/navbar/components/arrow.vue";
import Seperator from "~/components/home/navbar/components/seperator.vue";
import EnlargingVideo from "~/components/home/about-contd/components/enlarging-video.vue";

const wrapperVariants = {
  start: { opacity: 0 },
  end: { opacity: 1 },
};

const containerVariants = {
  start: { opacity: 0, y: "100px" },
  end: { opacity: 1, y: 0, transition: { duration: 1 } },
};
</script>

<style scoped></style>
