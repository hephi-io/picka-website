<template>
  <header class="flex md:justify-center md:pt-10">
    <nav
      class="nav w-[90%] xl:w-[1100px] h-[75px] mx-auto flex items-center justify-between rounded-full md:border md:border-[#eee] md:px-6"
    >
      <div class="z-30">
        <IconLogo :isAlternate="showMenu" />
      </div>

      <div
        :class="`fixed md:static bg-[#FF7C33] md:bg-white top-0  w-full md:w-auto h-screen md:h-auto z-20 transition-all duration-300 ${
          showMenu ? 'left-0' : 'left-[9999px]'
        }`"
      >
        <div
          class="flex flex-col md:flex-row bg-white w-[90%] mx-auto md:w-auto mt-[10vh] md:mt-0 md:justify-between md:items-center gap-x-8 gap-y-3 p-5 md:p-0 rounded-md"
        >
          <a
            class="text-[15px] text-white md:text-[#1E1E1E] bg-black md:bg-white py-2 px-3 md:p-0 rounded-md"
            href="#home"
          >
            Home
          </a>

          <a
            class="text-[15px] text-[#1E1E1E] md:bg-white py-2 px-3 md:p-0 rounded-md"
            href="#services"
          >
            Services
          </a>

          <a
            class="text-[15px] text-[#1E1E1E] md:bg-white py-2 px-3 md:p-0 rounded-md"
            href="#faqs"
          >
            FAQs
          </a>

          <a
            class="text-[15px] text-[#1E1E1E] md:bg-white py-2 px-3 md:p-0 rounded-md"
            href="#support"
          >
            Support
          </a>
        </div>
      </div>

      <button
        class="hidden md:flex items-center justify-center bg-gradient-to-r from-[#FF7C33] to-[#FA3105] font-medium text-[15px] text-[#FFFAF8] rounded-full w-[125px] h-[43px]"
      >
        Get Started
      </button>

      <button
        class="bg-black w-[48px] h-[48px] rounded-full md:hidden relative z-30"
        @click="showMenu = !showMenu"
      >
        <div
          :class="`bg-white h-[2px] w-[40%] absolute left-1/2 -translate-x-1/2 transition-all duration-300 ${
            showMenu ? 'top-1/2 -translate-y-1/2 rotate-45' : 'top-5'
          }`"
        ></div>

        <div
          :class="`bg-white h-[2px] w-[40%] absolute left-1/2 -translate-x-1/2 transition-all duration-300 ${
            showMenu ? 'top-1/2 -translate-y-1/2 -rotate-45' : 'bottom-5'
          }`"
        ></div>
      </button>
    </nav>

    <div
      v-if="false"
      class="absolute w-full z-10 pt-6 bg-[#FF7C33] flex justify-center md:hidden pb-4"
    >
      <div class="w-[95%]">
        <div class="flex justify-between mb-[93px]">
          <div>
            <img src="/images/zipkod-dropdown.svg" alt="Zipkod Logo" />
          </div>

          <div class="w-12 h-12 rounded-full p-3 bg-[#1E1E1E]">
            <img src="/images/menu-collapse.svg" alt="Cancel" @click="" />
          </div>
        </div>

        <div class="rounded-3xl bg-white p-6 mb-44">
          <div class="bg-[#1E1E1E] rounded-xl px-6 py-3">
            <span
              class="tt-firs-neue-medium font-medium text-2xl leading-[30.96px] text-white"
              >Home</span
            >
          </div>

          <div class="px-6 py-3">
            <span
              class="tt-firs-neue-medium font-medium text-2xl leading-[30.96px] text-[#444444]"
              >Services</span
            >
          </div>

          <div class="px-6 py-3">
            <span
              class="tt-firs-neue-medium font-medium text-2xl leading-[30.96px] text-[#444444]"
              >FAQs</span
            >
          </div>

          <div class="px-6 py-3">
            <span
              class="tt-firs-neue-medium font-medium text-2xl leading-[30.96px] text-[#444444]"
              >Support</span
            >
          </div>
        </div>

        <div class="flex justify-between">
          <div class="flex justify-between gap-x-3">
            <div>
              <img src="/images/facebook-logo.svg" alt="Facebook Logo" />
            </div>
            <div>
              <img src="/images/instagram-logo.svg" alt="Instagram Logo" />
            </div>
            <div>
              <img src="/images/youtube-logo.svg" alt="Youtube Logo" />
            </div>
            <div>
              <img src="/images/twitter-logo.svg" alt="Twitter Logo" />
            </div>
          </div>

          <div class="flex items-end">
            <div
              class="tt-firs-neue-normal font-normal text-[10px] leading-[14px] text-[#FFFFFF40]"
            >
              © 2024 — Copyright
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>

<script setup lang="ts">
import { ref } from "vue";

import IconLogo from "~/assets/icons/svg-components/logo.vue";

const showMenu = ref(false);
</script>

<style scoped>
@media screen and (min-width: 768px) {
  .nav {
    box-shadow: 0px 1px 2px rgba(20, 12, 53, 0.1);
  }
}
</style>
