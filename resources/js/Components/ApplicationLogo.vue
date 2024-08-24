<script setup lang="ts">
import { Link } from '@inertiajs/vue3';
</script>

<template>
    <div class="flex items-center justify-between">
        <div class="flex lg:flex-1 gap-3">
            <Link :href="route('landing-page')" class="-m-1.5 p-1.5">
            <img class="h-20 w-auto" src="/android-chrome-192x192.png" alt="" />
            </Link>
            <div class="flex flex-col justify-center">
                <p class="text-xl font-bold">Politeknik Negeri Jakarta</p>
                <p class="font-sans">Bangkit, Adaptif dan Terus Melaju</p>
            </div>
        </div>
    </div>
</template>
