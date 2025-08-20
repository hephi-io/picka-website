<template>
  <ScrollArea class="w-full h-full">
    <motion.div class="w-full h-full flex" :style="{ x: x }">
      <div class="md:w-[2.6%] lg:w-[9%]"></div>
      <div class="h-full flex md:w-[97.4%] md:gap-x-[13.9px] lg:w-[91%] lg:gap-x-6">
        <div
          v-for="slide in slides"
          :key="slide.id"
          class="shrink-0 md:w-[389.02px] md:h-[286.84px] lg:w-[542.5px] lg:h-[400px]"
        >
          <Slide
            :icon="slide.icon"
            :style="slide.style"
            :heading="slide.heading"
            :paragraph="slide.paragraph"
            :buttonText="slide.buttonText"
            :number="slide.number"
          />
        </div>
      </div>
    </motion.div>
    <ScrollBar orientation="horizontal" />
  </ScrollArea>
</template>

<script setup lang="ts">
import { motion, useScroll, useTransform } from "motion-v";
import { ScrollArea, ScrollBar } from "@/components/ui/scroll-area";
import Slide from "~/components/home/how-it-works/components/slide.vue";
import Package from "~/components/home/about/components/package.vue";
import ContainerTruck from "~/components/home/how-it-works/components/container-truck.vue";
import TimeSchedule from "~/components/home/how-it-works/components/time-schedule.vue";
import Bulb from "~/components/home/how-it-works/components/bulb.vue";

const slides = [
  {
    id: 1,
    icon: Package,
    style: "md:w-[17.21px] md:h-[19.12px] lg:w-6 lg:h-[26.67px] stroke-white",
    heading: "Book a Delivery",
    paragraph:
      "Schedule deliveries in seconds using our app or dashboard — for one-stop or multi-stop routes.",
    buttonText: "Book Now",
    number: "01",
  },
  {
    id: 2,
    icon: ContainerTruck,
    style: "md:w-[19.12px] md:h-[15.3px] lg:w-[30px] lg:h-6",
    heading: "Real-Time Tracking",
    paragraph:
      "Follow every movement of your package with live updates and GPS-backed visibility.",
    buttonText: "Book Now",
    number: "02",
  },
  {
    id: 3,
    icon: TimeSchedule,
    style: "md:w-[19.12px] md:h-[19.12px] lg:w-[30px] lg:h-[30px]",
    heading: "Secure, On-Time Delivery",
    paragraph: "Our vetted riders ensure safe, on-time deliveries — always.",
    buttonText: "Book Now",
    number: "03",
  },
  {
    id: 4,
    icon: Bulb,
    style: "md:w-[19.12px] md:h-[19.12px] lg:w-[30px] lg:h-[30px]",
    heading: "Grow Without Limits",
    paragraph:
      "Use Picka’s APIs, analytics, and rider network to scale logistics effortlessly as your business grows.",
    buttonText: "Book Now",
    number: "04",
  },
];

const { scrollYProgress } = useScroll();

const x = useTransform(scrollYProgress, [0.40, 0.43], ["0%", "-45%"]);
</script>

<style scoped></style>
