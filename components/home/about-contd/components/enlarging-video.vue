<template>
  <div class="w-full h-full flex justify-center items-center">
    <motion.div class="w-[640px] h-[576px]" :style="{ scale: scale }">
      <video class="w-full h-full" autoplay muted loop>
        <source :src="EnlargingVideo" type="video/mp4" />
      </video>
    </motion.div>
  </div>
</template>

<script setup lang="ts">
import { motion, useScroll, useTransform } from "motion-v";
import EnlargingVideo from "~/assets/mp4/enlarging-video.mp4";

const { scrollYProgress } = useScroll();
const scale = useTransform(scrollYProgress, [0.09, 0.19], [1, 2.3]);

</script>

<style scoped></style>
