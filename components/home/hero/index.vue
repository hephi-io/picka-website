<template>
  <div class="h-screen pt-[26.34vh]">
    <div class="relative max-w-[976px] h-[61.61vh] mx-auto">
      <h1
        class="max-w-[832px] font-bold text-5xl leading-[120%] -tracking-[0.08px] text-center text-[#E5E4DE] mx-auto"
      >
        Effortless Logistics. Seamless Deliveries. Powered by Technology.
      </h1>
      <p
        class="max-w-[832px] text-base leading-[120%] -tracking-[0.08px] text-center text-[#E5E4DE] mt-[2.58vh] mx-auto"
      >
        From real-time, Uber-like deliveries to API-driven logistics solutions,
        Picka makes sending and receiving items effortless for individuals and
        businesses.
      </p>
      <PickaGlow />
    </div>
  </div>
</template>

<script setup lang="ts">
import PickaGlow from "~/components/home/hero/components/picka-glow.vue";
</script>

<style scoped></style>
