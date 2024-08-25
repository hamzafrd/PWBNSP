<script setup>
import { Link } from '@inertiajs/vue3';
import { onMounted, ref } from 'vue';

const props = defineProps({
    listForm: {
        type: Object,
        default: {
            id: '',
            nama_lengkap: '',
            email: '',
            nem: '',
        }
    },
    canLogin: Boolean,
    canRegister: Boolean,
})

const navigation = [
    { name: 'Pendaftaran Mahasiswa Baru', href: route('register') },
    { name: 'Seleksi Mahasiswa Baru', href: route('seleksi') },

]

const mobileMenuOpen = ref(false)
const contentTopPadding = ref(0)

onMounted(() => {
    $('#data-table').DataTable({
        responsive: true,
        "pageLength": 5

    })
    const headerHeight = $('header').outerHeight(true);
    contentTopPadding.value = headerHeight
});
</script>

<template>

    <Head title="Politeknik Negeri Jakarta - Ujian Sertifikasi Pengembangan Web" />


    <div class="bg-white min-h-svh">
        <header class="absolute inset-x-0 top-0 z-50">
            <nav class="flex items-center justify-between p-6 lg:px-8" aria-label="Global">
                <div class="flex lg:flex-1 gap-3">
                    <Link :href="route('landing-page')" class="-m-1.5 p-1.5">
                    <img class="h-12 w-auto" src="android-chrome-192x192.png" alt="" />
                    </Link>
                    <div class="flex flex-col justify-center">
                        <p class=" font-bold">Politeknik Negeri Jakarta</p>
                        <p class="text-xs font-semibold">Bangkit, Adaptif dan Terus Melaju</p>
                    </div>
                </div>
                <div class="flex lg:hidden">
                    <button type="button"
                        class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700"
                        @click="mobileMenuOpen = true">
                        <span class="sr-only">Open main menu</span>
                        <Bars3Icon class="h-6 w-6" aria-hidden="true" />
                    </button>
                </div>
                <div class="hidden lg:flex lg:gap-x-12">
                    <a v-for="item in navigation" :key="item.name" :href="item.href"
                        class="text-sm font-semibold leading-6 text-gray-900">{{ item.name }}</a>
                </div>
                <div class="hidden lg:flex lg:flex-1 lg:justify-end" v-if="canLogin">
                    <Link :href="route('login')" class="text-sm font-semibold leading-6 text-gray-900">Log in <span
                        aria-hidden="true">&rarr;</span></Link>
                </div>
            </nav>
            <Dialog class="lg:hidden" @close="mobileMenuOpen = false" :open="mobileMenuOpen">
                <div class="fixed inset-0 z-50" />
                <DialogPanel
                    class="fixed inset-y-0 right-0 z-50 w-full overflow-y-auto bg-white px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10">
                    <div class="flex items-center justify-between">
                        <a href="#" class="-m-1.5 p-1.5">
                            <span class="sr-only">Politeknik Negeri Jakarta</span>
                            <img class="h-8 w-auto" src="/android-chrome-192x192.png" alt="" />
                        </a>
                        <button type="button" class="-m-2.5 rounded-md p-2.5 text-gray-700"
                            @click="mobileMenuOpen = false">
                            <span class="sr-only">Close menu</span>
                            <XMarkIcon class="h-6 w-6" aria-hidden="true" />
                        </button>
                    </div>
                    <div class="mt-6 flow-root">
                        <div class="-my-6 divide-y divide-gray-500/10">
                            <div class="space-y-2 py-6">
                                <Link v-for="item in navigation" :key="item.name" :href="item.href"
                                    class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50">
                                {{
                                    item.name }}</Link>
                            </div>
                            <div class="py-6">
                                <Link :href="route('login')"
                                    class="-mx-3 block rounded-lg px-3 py-2.5 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50">
                                Log
                                in</Link>
                            </div>
                        </div>
                    </div>
                </DialogPanel>
            </Dialog>
        </header>

        <div class="relative isolate px-6 lg:px-8 ">
            <div class="absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80"
                aria-hidden="true">
                <div class="relative left-[calc(50%-11rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-[#008797] to-[#012a2e] opacity-30 sm:left-[calc(50%-30rem)] sm:w-[72.1875rem]"
                    style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)" />
            </div>

            <div :style="{ marginTop: contentTopPadding + 'px' }"
                class="max-w-4xl mx-auto bg-blue-50 p-5 rounded-lg shadow shadow-blue-300">
                <table id="data-table">
                    <thead>
                        <tr>
                            <th>Ranking</th>
                            <th>Nama Lengkap</th>
                            <th>Email</th>
                            <th>NEM</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-if="props.listForm.length" v-for="(form, index) in props.listForm" :key="index">

                            <td>{{ index + 1 }}</td>
                            <td>{{ form.nama_lengkap }}</td>
                            <td>{{ form.email }}</td>
                            <td>{{ form.nem }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <div class="absolute inset-x-0 top-[-100px] -z-10 transform-gpu overflow-hidden blur-3xl"
                aria-hidden="true">
                <div class="relative left-[calc(50%+3rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 bg-gradient-to-tr from-[#008797] to-[#1a737b] opacity-30 sm:left-[calc(50%+36rem)] sm:w-[72.1875rem]"
                    style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)" />
            </div>
        </div>
    </div>


</template>

<style closed>
/*Overrides for Tailwind CSS */

th,
td,
table {
    text-align: start !important;
}

/*Form fields*/
.dataTables_wrapper select,
.dataTables_wrapper .dataTables_filter input {
    color: #4a5568;
    /*text-gray-700*/
    padding-left: 1rem;
    /*pl-4*/
    padding-right: 1rem;
    /*pl-4*/
    padding-top: .5rem;
    /*pl-2*/
    padding-bottom: .5rem;
    /*pl-2*/
    line-height: 1.25;
    /*leading-tight*/
    border-width: 2px;
    /*border-2*/
    border-radius: .25rem;
    border-color: #edf2f7;
    /*border-gray-200*/
    background-color: #edf2f7;
    /*bg-gray-200*/
}

/*Row Hover*/
table.dataTable.hover tbody tr:hover,
table.dataTable.display tbody tr:hover {
    background-color: #ebf4ff;
    /*bg-indigo-100*/
}

/*Pagination Buttons*/
.dataTables_wrapper .dataTables_paginate .paginate_button {
    font-weight: 700;
    /*font-bold*/
    border-radius: .25rem;
    /*rounded*/
    border: 1px solid transparent;
    /*border border-transparent*/
}

/*Pagination Buttons - Current selected */
.dataTables_wrapper .dataTables_paginate .paginate_button.current {
    color: #fff !important;
    /*text-white*/
    box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
    /*shadow*/
    font-weight: 700;
    /*font-bold*/
    border-radius: .25rem;
    /*rounded*/
    background: #667eea !important;
    /*bg-indigo-500*/
    border: 1px solid transparent;
    /*border border-transparent*/
}

/*Pagination Buttons - Hover */
.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
    color: #fff !important;
    /*text-white*/
    box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
    /*shadow*/
    font-weight: 700;
    /*font-bold*/
    border-radius: .25rem;
    /*rounded*/
    background: #667eea !important;
    /*bg-indigo-500*/
    border: 1px solid transparent;
    /*border border-transparent*/
}

/*Add padding to bottom border */
table.dataTable.no-footer {
    border-bottom: 1px solid #e2e8f0;
    /*border-b-1 border-gray-300*/
    margin-top: 0.75em;
    margin-bottom: 0.75em;
}

/*Change colour of responsive icon*/
table.dataTable.dtr-inline.collapsed>tbody>tr>td:first-child:before,
table.dataTable.dtr-inline.collapsed>tbody>tr>th:first-child:before {
    background-color: #667eea !important;
    /*bg-indigo-500*/
}
</style>
