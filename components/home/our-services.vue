<script setup>
import { ref } from "vue";

let id = ref(0);

const serviceWindows = ref([
  {
    src: "/images/bike-man.png",
    alt: "Bike man",
    heading: "Last-Mile Delivery",
    paragraph: `
        At Zipkod, we understand that the last mile is a critical phase in moving goods. That's why we ensure that your items reach their final destination quickly and securely.
      `,
  },

  {
    src: "/images/guy-on-keyboard.png",
    alt: "Guy on keyboard",
    heading: "Business Integrations",
    paragraph: `
        We offer API integrations for businesses, allowing them to concentrate on generating revenue while we handle the logistics
      `,
  },

  {
    src: "/images/real-time-tracking.png",
    alt: "Real time tracking",
    heading: "Real-time Tracking",
    paragraph: `
        With real-time tracking, individuals and businesses can stay informed about their order's location every step of the way.
      `,
  },

  {
    src: "/images/warehouse.png",
    alt: "Warehouse",
    heading: "Bulk Ordering",
    paragraph: `
        At Zipkod, our bulk order feature streamlines the creation of multiple orders and offers discounted rates, saving businesses time and money
      `,
  },
]);
</script>

<template>
  <section class="w-[90%] 2xl:w-[1344px] mx-auto pt-40" id="services">
    <div
      class="space-grotesk font-semibold text-[13px] text-[#444444] md:text-base mb-6"
    >
      OUR SERVICES
    </div>

    <div class="flex justify-center">
      <div class="grid grid-cols-1 gap-6 lg:gap-12 md:grid-cols-2">
        <div
          class="service-card px-4 pt-4 pb-6 shadow-2xl box-border md:px-6 md:pt-6 md:pb-8"
          v-for="(serviceWindow, i) in serviceWindows"
          :key="i"
        >
          <div class="mb-5">
            <img
              :src="serviceWindow.src"
              :alt="serviceWindow.alt"
              class="w-full h-[426px] object-cover rounded-lg"
            />
          </div>

          <div
            class="space-grotesk font-bold text-[#444444] mb-4 text-xl leading-[25.8px] lg:text-2xl lg:leading-[30.96px]"
          >
            {{ serviceWindow.heading }}
          </div>

          <div
            class="tt-firs-neue-medium font-medium text-[#737373] text-base leading-[20.8px] md:text-lg md:leading-[23.4px]"
          >
            {{ serviceWindow.paragraph }}
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.service-card {
  background: #ffffff;
  border: 1px solid #ebebeb;
  box-shadow: 0px 5px 16px rgba(8, 15, 52, 0.06);
  border-radius: 24px;
}
</style>
