<template>
  <ScrollArea class="w-full h-full">
    <div class="w-full h-[400px] flex gap-x-6">
      <div
        v-for="slide in slides"
        :key="slide.id"
        class="w-[542.5px] h-[400px] shrink-0"
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
    <ScrollBar orientation="horizontal" />
  </ScrollArea>
</template>

<script setup lang="ts">
import { ScrollArea, ScrollBar } from "@/components/ui/scroll-area";
import Slide from "~/components/home/how-it-works/components/slide.vue";
import Package from "~/components/home/about/components/package.vue";
import ContainerTruck from "~/components/home/how-it-works/components/container-truck.vue";
import TimeSchedule from "~/components/home/how-it-works/components/time-schedule.vue";

const slides = [
  {
    id: 1,
    icon: Package,
    style: "w-[24px] h-[26.67px] stroke-white",
    heading: "Book a Delivery",
    paragraph:
      "Schedule deliveries in seconds using our app or dashboard — for one-stop or multi-stop routes.",
    buttonText: "Book Now",
    number: "01",
  },
  {
    id: 2,
    icon: ContainerTruck,
    style: "",
    heading: "Real-Time Tracking",
    paragraph:
      "Follow every movement of your package with live updates and GPS-backed visibility.",
    buttonText: "Book Now",
    number: "02",
  },
  {
    id: 3,
    icon: TimeSchedule,
    style: "",
    heading: "Secure, On-Time Delivery",
    paragraph: "Our vetted riders ensure safe, on-time deliveries — always.",
    buttonText: "Book Now",
    number: "03",
  },
  {
    id: 4,
    icon: TimeSchedule,
    style: "",
    heading: "Grow Without Limits",
    paragraph:
      "Use Picka’s APIs, analytics, and rider network to scale logistics effortlessly as your business grows.",
    buttonText: "Book Now",
    number: "04",
  },
];
</script>

<style scoped></style>
