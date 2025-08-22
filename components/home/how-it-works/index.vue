<template>
  <motion.div
    id="how-it-works"
    :variants="containerVariants"
    initial="start"
    whileInView="end"
    :inViewOptions="{ once: true }"
  >
    <motion.div
      class="w-[91.79%] md:w-[91.37%] lg:max-w-[1112px] mx-auto"
      :variants="childrenVariants"
    >
      <FlexHeading :text="text" :heading="heading" />
    </motion.div>
    <motion.div
      class="w-[91.79%] lg:w-full lg:overflow-hidden mx-auto mt-8 md:mt-[37.07px] lg:mx-0 lg:mt-16"
      :variants="childrenVariants"
    >
      <div class="md:grid md:grid-cols-2 md:gap-[13.9px] lg:hidden">
        <div
          :class="`group relative w-full h-[243.32px] md:h-[286.84px] ${
            card.id === 1 ? '' : 'mt-[13.9px] md:mt-0'
          }`"
          v-for="card in cards"
          :key="card.id"
        >
          <div
            class="absolute top-0 w-full h-full rounded-[7.3px] gradient group-hover:h-[80%] transition-all duration-[0.3s] ease-in-out md:rounded-[8.61px] p-4 md:p-[22.95px]"
          >
            <div
              class="w-[34.28px] h-[34.28px] rounded-full bg-[#FF7C33] flex justify-center items-center md:w-[40.41px] md:h-[40.41px]"
            >
              <component :is="card.icon" :style="card.iconStyle" />
            </div>
            <div
              class="hubot-sans font-medium text-lg leading-[17.03px] tracking-[0%] align-middle text-[#FAFAFA] md:text-xl md:leading-[20.08px] mt-[14.6px] md:mt-[17.21px]"
            >
              {{ card.heading }}
            </div>
            <div
              class="filson-pro font-[350] text-sm leading-[14.6px] tracking-[0%] align-middle text-[#F0F0F0] md:leading-[17.21px] mt-[9.73px] md:mt-[11.47px]"
            >
              {{ card.paragragh }}
            </div>
            <div
              class="hubot-sans absolute right-4 bottom-4 font-medium text-[60.83px] leading-[75%] tracking-[0%] align-middle text-[#D9D9D9] md:right-[22.95px] md:bottom-[22.95px] md:text-[71.71px] md:leading-[100%]"
            >
              {{ card.number }}
            </div>
          </div>
          <div
            class="absolute bottom-0 overflow-hidden grid grid-rows-[0fr] opacity-0 group-hover:grid-rows-[1fr] group-hover:opacity-100 transition-all duration-[0.3s] ease-in-out"
          >
            <Button
              class="overflow-hidden gap-x-2 rounded-[6px] border-[0.5px] border-[#E5E4DE] hover:cursor-pointer p-3"
            >
              <span
                class="text-[13px] leading-4.5 -tracking-[0.25px] text-center text-white"
                >Book Now</span
              >
              <Arrow :style="'fill-white'" />
            </Button>
          </div>
        </div>
      </div>
      <motion.div
        class="hidden lg:block lg:w-full lg:h-[410px]"
      >
        <HorizontalSlide />
      </motion.div>
    </motion.div>
  </motion.div>
</template>

<script setup lang="ts">
import { motion } from "motion-v";
import HorizontalSlide from "~/components/home/how-it-works/components/horizontal-slide.vue";
import FlexHeading from "~/components/home/how-it-works/components/flex-heading.vue";
import Package from "~/components/home/about/components/package.vue";
import ContainerTruck from "~/components/home/how-it-works/components/container-truck.vue";
import TimeSchedule from "~/components/home/how-it-works/components/time-schedule.vue";
import Bulb from "~/components/home/how-it-works/components/bulb.vue";
import Button from "~/components/ui/button/Button.vue";
import Arrow from "~/components/home/navbar/components/arrow.vue";

const text = "How Picka Delivers Smarter";
const heading =
  "Experience end-to-end logistics automation—from instant bookings to real-time tracking and reverse pickups.";

const containerVariants = {
  start: { opacity: 0 },
  end: { opacity: 1, transition: { staggerChildren: 0.5 } },
};

const childrenVariants = {
  start: { opacity: 0, y: "22px" },
  end: { opacity: 1, y: 0 },
};

const cards = [
  {
    id: 1,
    icon: Package,
    iconStyle: "w-[14.6px] h-[16.22px] stroke-white md:w-[17.21px] md:h-[19.12px]",
    heading: "Book a Delivery",
    paragragh:
      "Schedule deliveries in seconds using our app or dashboard — for one-stop or multi-stop routes.",
    number: "01",
  },
  {
    id: 2,
    icon: ContainerTruck,
    iconStyle: "w-[16.22px] h-[12.98px] md:w-[19.12px] md:h-[15.3px]",
    heading: "Real-Time Tracking",
    paragragh:
      "Follow every movement of your package with live updates and GPS-backed visibility.",
    number: "02",
  },
  {
    id: 3,
    icon: TimeSchedule,
    iconStyle: "w-[16.22px] h-[16.22px] md:w-[19.12px] md:h-[19.12px]",
    heading: "Secure, On-Time Delivery",
    paragragh: "Our vetted riders ensure safe, on-time deliveries — always.",
    number: "03",
  },
  {
    id: 4,
    icon: Bulb,
    iconStyle: "w-[12.98px] h-[16.22px] md:w-[15.3px] md:h-[19.12px]",
    heading: "Grow Without Limits",
    paragragh:
      "Use Picka’s APIs, analytics, and rider network to scale logistics effortlessly as your business grows.",
    number: "04",
  },
];
</script>

<style scoped>
.gradient {
  background: linear-gradient(180deg, #222222 0%, #212121 100%);
}
</style>
