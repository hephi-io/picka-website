<template>
  <motion.div 
    class="flex justify-center items-center md:h-[438.22px] lg:h-[530.72px] mt-[1px]"
    initial="start"
    whileInView="end"
    :inViewOptions="{ once: true }"
  >
    <motion.div 
      class="flex flex-col items-center md:w-[91.37%] lg:max-w-[1112px]"
      :variants="containerVariants"
    >
      <motion.div 
        class="flex items-center md:gap-x-[11.61px] lg:gap-x-[10px]"
        :variants="childrenVariants"
      >
        <div class="bg-[#FF7C33] rounded-full md:w-[13.94px] md:h-[13.94px] lg:w-3 lg:h-3" />
        <span class="leading-[150%] tracking-[0%] text-white md:text-[15.1px] md:text-right md:align-middle lg:text-[13px]">
          Picka-The Fastest in Africa
        </span>
      </motion.div>
      <motion.div 
        class="flex items-center md:gap-x-[4.65px] lg:gap-x-1 md:mt-[18.58px] lg:mt-4"
        :variants="childrenVariants"
      >
        <Icon>
          <Package />
        </Icon>
        <DurationIcon />
        <Icon>
          <HomeIcon />
        </Icon>
      </motion.div>
      <motion.h2
        class="font-bold leading-[120%] text-center text-[#E5E4DE] md:w-full md:text-[25px] md:-tracking-[0.06px] md:align-bottom lg:w-[78.24%] lg:text-[32px] lg:-tracking-[0.08px] mt-[44px]"
        :variants="childrenVariants"
      >
        We are a tech-driven logistics company redefining delivery experiences
        for individuals and businesses. Whether you need on-demand deliveries or
        full-scale logistics automation, we simplify the process with fast,
        reliable, and seamless solutions.
      </motion.h2>
    </motion.div>
  </motion.div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import Ellipse from "~/components/home/about/components/ellipse.vue";
import Icon from "~/components/home/about/components/icon.vue";
import Package from "~/components/home/about/components/package.vue";
import HomeIcon from "~/components/home/about/components/home-icon.vue";
import DurationIcon from "~/components/home/about/components/duration-icon.vue";

const containerVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { staggerChildren: 0.75 } },
};

const childrenVariants = {
  start: { opacity: 0, y: "22px" },
  end: { opacity: 1, y: 0 },
}
</script>

<style scoped></style>
