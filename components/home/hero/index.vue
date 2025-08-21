<template>
  <div id="home" class="relative h-screen">
    <div class="w-full h-full">
      <video
        class="w-full h-full object-cover"
        :src="MapMograph"
        autoplay
        muted
        loop
      ></video>
    </div>
    <div
      class="absolute top-0 right-0 left-0 bottom-0 z-10 pt-[20.58vh] md:pt-[23.59vh] lg:pt-[26.34vh]"
    >
      <motion.div
        class="w-[91.79%] h-full md:w-[91.37%] lg:max-w-[976px] mx-auto"
        :variants="divVariants"
        initial="start"
        animate="end"
      >
        <motion.h1
          class="flex flex-wrap gap-x-1 font-bold text-3xl leading-[120%] -tracking-[0.04px] align-bottom text-[#E5E4DE] md:justify-center md:w-[97.65%] md:text-[39px] md:-tracking-[0.07px] md:text-center lg:max-w-[900px] lg:text-5xl lg:-tracking-[0.08px] mx-auto"
          :variants="headingVariants"
        >
          <motion.span
            v-for="(word, index) in wordArray"
            :key="index"
            :variants="textVariants"
            class="hubot-sans"
          >
            {{ word }}
          </motion.span>
        </motion.h1>
        <motion.div :variants="displayVariants">
          <motion.p
            class="text-sm leading-[140%] -tracking-[0.04px] align-bottom text-[#E5E4DE] md:w-[97.65%] md:text-base md:-tracking-[0.07px] md:text-center lg:max-w-[832px] lg:tracking-[0.5px] mx-auto mt-[2.23vh] md:mt-[2.72vh] lg:mt-[2.58vh]"
            :variants="childrenVariants"
          >
            From real-time, Uber-like deliveries to API-driven logistics
            solutions, Picka makes sending and receiving items effortless for
            individuals and businesses.
          </motion.p>
          <!-- <motion.div
            class="absolute bottom-[6.68vh] w-full h-[57.42vh] md:bottom-0"
            :variants="childrenVariants"
          >
            <PickaGlow />
          </motion.div> -->
        </motion.div>
      </motion.div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import MapMograph from "~/assets/mp4/Map 2.mp4";
// import PickaGlow from "~/components/home/hero/components/picka-glow.vue";

const divVariants = {
  start: { opacity: 0 },
  end: {
    opacity: 1,
    transition: { delay: 0.4, staggerChildren: 2 },
  },
};

const headingVariants = {
  start: { opacity: 0, y: "22px" },
  end: {
    opacity: 1,
    y: 0,
    transition: { staggerChildren: 0.1 },
  },
};

const displayVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { staggerChildren: 2.5 } },
};

const textVariants = {
  start: { opacity: 0, y: "100%" },
  end: { opacity: 1, y: 0, x: 0 },
};

const childrenVariants = {
  start: { opacity: 0, y: "22px" },
  end: { opacity: 1, y: 0 },
};

const sentence =
  "Effortless Logistics. Seamless Deliveries. Powered by Technology.";

const wordArray = sentence.split(/(\s+)/);
</script>

<style scoped></style>
