<script setup>
import { ref } from "vue";

let id = ref(0);

const faqWindows = ref([
  {
    heading: "How do I track my package?",
  },

  {
    heading: "Can I schedule deliveries at specific times?",
  },

  {
    heading: "What technology integrations are available?",
  },

  {
    heading: "How do I place an order?",
  },

  {
    heading: "How can I track my deliveries?",
  },
]);
</script>

<template>
  <section class="w-[90%] 2xl:w-[1344px] mx-auto pt-40" id="faqs">
    <div
      class="space-grotesk font-semibold text-[13px] leading-[16.77px] text-[#444444] mb-5 md:mb-6 md:text-base md:leading-[20.64px]"
    >
      FAQS
    </div>

    <div>
      <div class="faq-card p-4 md:px-[29px] md:py-10">
        <div class="flex justify-between mb-9">
          <div
            class="flex items-center space-grotesk font-bold text-lg text-[#FF7830] md:text-xl"
          >
            How do I sign up for ZipKod’s services?
          </div>

          <div>
            <img src="/images/minimize-button.svg" alt="Minimize button" />
          </div>
        </div>

        <div class="text-lg leading-[23.4px] text-[#737373]">
          Signing up with ZipKod is easy. Simply visit our website and fill out
          the registration form under the "Sign Up" section. Our team will then
          guide you through the setup process to integrate our logistics
          platform into your business operations.
        </div>
      </div>

      <div>
        <div
          class="faq-card flex items-center justify-between p-4 mt-4 md:mt-[10px] md:px-[29px] md:py-10"
          v-for="(faqWindow, i) in faqWindows"
          :key="i"
        >
          <div
            class="space-grotesk font-bold text-lg text-[#444444] md:text-xl"
          >
            {{ faqWindow.heading }}
          </div>

          <div>
            <img src="/images/maximize-button.svg" alt="Maximize button" />
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.faq-card {
  background: #ffffff;
  border: 1px solid #ebebeb;
  box-shadow: 0px 5px 16px rgba(8, 15, 52, 0.06);
  border-radius: 16px;
}
</style>
