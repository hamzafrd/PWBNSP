<script setup>
import GuestLayout from '@/Layouts/GuestLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';
import { Head, Link, useForm } from '@inertiajs/vue3';

const form = useForm({
    name: '',
    email: '',
    password: '',
    password_confirmation: '',
});

const submit = () => {
    form.post(route('register'), {
        onFinish: () => form.reset('password', 'password_confirmation'),
    });
};
</script>

<template>
    <GuestLayout>

        <Head title="Register" />
        <div bgsrc="/login-page/bg-login-2.png" class="relative bg-neutral-9 p-8 py-3 mx-auto ">
            <form class=" text-center block">
                <div class="text-2xl">Sistem Informasi Akademik</div>
                <div class="text-2xl text-secondary-blue-dark font-bold"> POLITEKNIK NEGERI JAKARTA </div>
                <div class="py-2 text-primary-default"> Pendaftaran Calon Mahasiswa </div>
                <div class="mt-4">

                    <div class="flex place-items-center mt-1 bg-white px-2 transition-all border h-10 rounded rounded-t-lg mt-4"
                        title="Masukkan Nama Lengkap Sesuai Akta Lahir"><!---->
                        <div class="ml-1 w-5 flex place-items-center"><svg width="20" height="14" fill="none"
                                xmlns="http://www.w3.org/2000/svg" class="">
                                <path
                                    d="M12.497.335a3.333 3.333 0 100 6.666 3.333 3.333 0 000-6.666zm0 1.583a1.75 1.75 0 110 3.5 1.75 1.75 0 010-3.5zm-9.167.917v2.5H.83v1.667h2.5v2.5h1.667v-2.5h2.5V5.335h-2.5v-2.5H3.33zm9.167 5c-2.225 0-6.667 1.108-6.667 3.333v2.5h13.334v-2.5c0-2.225-4.442-3.333-6.667-3.333zm0 1.583c2.475 0 5.083 1.217 5.083 1.75v.917H7.414v-.917c0-.533 2.583-1.75 5.083-1.75z"
                                    fill="#2C3A4B"></path>
                            </svg></div><input placeholder="Nama Lengkap" type="text" name="" required="required"
                            class="pl-2 pr-3 outline-none w-full">
                    </div>
                    <div class="w-full sm:inline-flex sm:space-x-2">
                        <div class="flex place-items-center mt-1 bg-white px-2 transition-all border h-10 rounded w-full sm:w-1/2"
                            title="Masukkan Tempat Lahir Sesuai Akta Lahir"><!---->
                            <div class="ml-1 w-5 flex place-items-center"><svg width="15" height="15" fill="none"
                                    xmlns="http://www.w3.org/2000/svg" class="">
                                    <path
                                        d="M14.167 0H7.5a.836.836 0 00-.833.833v1.342l.008.008 4.167 3.75c.525.467.825 1.15.825 1.859v.541h1.666V10h-1.666v1.667h1.666v1.666h-1.666V15h2.5a.836.836 0 00.833-.833V.833A.836.836 0 0014.167 0zM10 3.333H8.333V1.667H10v1.666zm3.333 3.334h-1.666V5h1.666v1.667zm0-3.334h-1.666V1.667h1.666v1.666z"
                                        fill="#2C3A4B"></path>
                                    <path
                                        d="M10 14.166V7.791c0-.233-.1-.458-.275-.616l-4.167-3.75A.8.8 0 005 3.208c-.2 0-.4.075-.558.217L.275 7.175A.808.808 0 000 7.79v6.375c0 .459.375.834.833.834H2.5a.836.836 0 00.833-.834v-3.333h3.334v3.333c0 .459.375.834.833.834h1.667a.836.836 0 00.833-.834z"
                                        fill="#2C3A4B"></path>
                                </svg></div><input placeholder="Tempat Lahir" type="text" name="" required="required"
                                class="pl-2 pr-3 outline-none w-full">
                        </div>
                        <div class="bg-white border mt-1 px-3 relative text-base h-10 rounded w-full sm:w-1/2"
                            placeholder="Tanggal Lahir" type="text" title="Masukkan Tanggal Lahir Sesuai Akta Lahir">
                            <div class="vdpComponent w-full rounded vdpWithInput" required="required">
                                <div class="cursor-text flex place-items-center text-base w-full"><input type="text"
                                        required="required" class="opacity-0 w-0 h-0">
                                    <div class="w-5 mx-auto h-10 flex place-items-center rounded-r cursor-pointer"><svg
                                            width="20" height="20" fill="none" xmlns="http://www.w3.org/2000/svg"
                                            class="">
                                            <path
                                                d="M15.833 3.333H15V2.5a.836.836 0 00-.833-.833.836.836 0 00-.834.833v.833H6.667V2.5a.836.836 0 00-.834-.833A.836.836 0 005 2.5v.833h-.833A1.66 1.66 0 002.508 5L2.5 16.666c0 .917.742 1.667 1.667 1.667h11.666c.917 0 1.667-.75 1.667-1.666V5c0-.917-.75-1.667-1.667-1.667zm0 12.5a.836.836 0 01-.833.833H5a.836.836 0 01-.833-.833V7.5h11.666v8.333zm-10-6.667H7.5v1.667H5.833V9.166zm3.334 0h1.666v1.667H9.167V9.166zm3.333 0h1.667v1.667H12.5V9.166z"
                                                fill="#323232"></path>
                                        </svg></div>
                                    <div class="px-2 rounded-md flex place-items-center w-full text-neutral-5"> Tanggal
                                        Lahir </div><!---->
                                </div> <!---->
                            </div>
                        </div>
                    </div>
                    <div class="text-status-error text-left text-sm mt-1" style="display: none;"> Tahun lahir selisih
                        minimal 15 tahun dari tahun berjalan. </div>
                    <div class="flex place-items-center mt-1 bg-white px-2 transition-all border h-10 rounded w-full"
                        title="Masukkan Nama Tanpa Gelar"><!---->
                        <div class="ml-1 w-5 flex place-items-center"><svg width="24" height="23" fill="none"
                                xmlns="http://www.w3.org/2000/svg" class="">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                    d="M18.704 19.695a.509.509 0 01-.5-.401.502.502 0 01.398-.593c2.31-.465 3.477-1.674 4.248-2.557-.542-.86-1.763-2.256-3.483-2.84-1.983-.672-2.409-.928-2.409-2.123 0-.223.15-.419.367-.482.323-.094.727-.096 1.194-.098.697-.005 1.563-.01 1.846-.38.24-.316.14-.542-.361-1.297-.123-.185-.252-.38-.376-.59-.965-1.638-1.038-2.363-1.122-3.202l-.016-.165c-.21-2.01-1.3-3.1-3.239-3.24-1.695.123-2.745.977-3.12 2.54a.51.51 0 01-.616.372.501.501 0 01-.378-.604c.48-1.994 1.929-3.17 4.08-3.313a.777.777 0 01.068 0c2.46.164 3.958 1.634 4.22 4.142l.018.17c.078.782.134 1.347.988 2.795.115.195.235.375.348.546.477.72 1.018 1.536.322 2.447-.587.771-1.734.778-2.655.783-.162.001-.326.002-.474.008.135.21.526.362 1.648.742 2.23.755 3.704 2.628 4.224 3.615a.497.497 0 01-.065.557l-.077.09c-.808.935-2.161 2.502-4.975 3.068a.523.523 0 01-.103.01z"
                                    fill="#2C3A4B"></path>
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                    d="M9.763 22.02c-5.117 0-8.71-.749-8.86-.781a.504.504 0 01-.403-.515c.197-4.067 2.771-5.33 4.69-5.925 1.432-.445 2.204-1.175 2.212-1.182a.516.516 0 01.72.007.496.496 0 01-.004.708c-.037.036-.939.902-2.62 1.424-1.793.557-3.644 1.542-3.946 4.583 1.104.196 4.213.676 8.21.676 4 0 7.108-.48 8.212-.676-.303-3.04-2.153-4.026-3.946-4.582-1.682-.523-2.583-1.389-2.62-1.425a.498.498 0 01-.005-.71.517.517 0 01.721-.005c.021.02.792.74 2.212 1.182 1.918.596 4.493 1.857 4.69 5.925a.504.504 0 01-.403.515c-.15.032-3.744.78-8.86.78z"
                                    fill="#2C3A4B"></path>
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                    d="M5.943 10.41l.042.025c.194.118.362.22.424.436.199.68 1.545 3.216 3.354 3.216 1.81 0 3.155-2.536 3.354-3.217.063-.214.23-.317.424-.435l.041-.025c.484-.876.386-1.234.343-1.325a.275.275 0 00-.15-.137.504.504 0 01-.418-.52c0-.011.052-1.022-.197-1.947-.024-.084-.649-2.154-3.397-2.154-2.775 0-3.392 2.134-3.397 2.156-.249.923-.198 1.934-.197 1.945a.504.504 0 01-.418.52c-.004.002-.106.034-.155.147-.04.093-.127.454.347 1.315zm3.82 4.681c-2.454 0-3.939-2.871-4.28-3.78l-.036-.023c-.154-.094-.265-.161-.342-.295-.558-.972-.703-1.757-.429-2.333.122-.257.3-.421.467-.526.003-.426.04-1.179.236-1.91.276-1.006 1.545-2.902 4.384-2.902 2.84 0 4.109 1.896 4.383 2.9.198.733.235 1.486.237 1.912.166.105.345.27.467.526.273.576.13 1.361-.429 2.333-.077.134-.188.201-.342.295l-.036.023c-.342.91-1.826 3.78-4.28 3.78z"
                                    fill="#2C3A4B"></path>
                            </svg></div><input placeholder="Nama Ibu Kandung" type="text" name="" required="required"
                            class="pl-2 pr-3 outline-none w-full">
                    </div>
                    <div data-v-5beb607e="" dir="auto"
                        class="v-select w-full my-1 vs--single vs--searchable has-tooltip" id="idKewarganegaraan"
                        data-original-title="null">
                        <div data-v-5beb607e="" id="vs5__combobox" role="combobox" aria-expanded="false"
                            aria-owns="vs5__listbox" aria-label="Search for option"
                            class="vs__dropdown-toggle transition-all border bg-white h-10">
                            <div data-v-5beb607e="" class="vs__selected-options"><input data-v-5beb607e=""
                                    required="required" placeholder="Pilih Kewarganegaraan" aria-autocomplete="list"
                                    aria-labelledby="vs5__combobox" aria-controls="vs5__listbox" type="search"
                                    autocomplete="off" class="vs__search"></div>
                            <div data-v-5beb607e="" class="vs__actions"><button data-v-5beb607e="" type="button"
                                    title="Clear Selected" aria-label="Clear Selected" class="vs__clear"
                                    style="display: none;"><svg data-v-5beb607e="" xmlns="http://www.w3.org/2000/svg"
                                        width="10" height="10">
                                        <path
                                            d="M6.895455 5l2.842897-2.842898c.348864-.348863.348864-.914488 0-1.263636L9.106534.261648c-.348864-.348864-.914489-.348864-1.263636 0L5 3.104545 2.157102.261648c-.348863-.348864-.914488-.348864-1.263636 0L.261648.893466c-.348864.348864-.348864.914489 0 1.263636L3.104545 5 .261648 7.842898c-.348864.348863-.348864.914488 0 1.263636l.631818.631818c.348864.348864.914773.348864 1.263636 0L5 6.895455l2.842898 2.842897c.348863.348864.914772.348864 1.263636 0l.631818-.631818c.348864-.348864.348864-.914489 0-1.263636L6.895455 5z">
                                        </path>
                                    </svg></button><svg data-v-5beb607e="" xmlns="http://www.w3.org/2000/svg" width="14"
                                    height="10" role="presentation" class="vs__open-indicator">
                                    <path
                                        d="M9.211364 7.59931l4.48338-4.867229c.407008-.441854.407008-1.158247 0-1.60046l-.73712-.80023c-.407008-.441854-1.066904-.441854-1.474243 0L7 5.198617 2.51662.33139c-.407008-.441853-1.066904-.441853-1.474243 0l-.737121.80023c-.407008.441854-.407008 1.158248 0 1.600461l4.48338 4.867228L7 10l2.211364-2.40069z">
                                    </path>
                                </svg>
                                <div data-v-5beb607e="" class="vs__spinner" style="display: none;">Loading...</div>
                            </div>
                        </div>
                        <ul data-v-5beb607e="" id="vs5__listbox" role="listbox"
                            style="display: none; visibility: hidden;">
                        </ul>
                    </div><!----><!----><span></span><!---->
                    <div class="text-neutral-5 text-left flex py-2 w-full">
                        <div class="mr-8"> Pilih Jalur Program </div>
                        <div data-original-title="null" class=" has-tooltip">
                            <div><input type="radio" id="programRpl" name="jalur-program" class="mr-1"
                                    value="true"><label for="programRpl" class="mr-8">RPL</label></div>
                        </div>
                        <div data-original-title="null" class=" has-tooltip"><input type="radio" id="programNonRpl"
                                name="jalur-program" selected="selected" class="mr-1" value="false"><label
                                for="programNonRpl" class="flex-grow">Non RPL</label></div>
                    </div>
                    <div data-v-5beb607e="" dir="auto"
                        class="v-select w-full my-1 vs--single vs--searchable vs--disabled has-tooltip"
                        id="idJenjangPendidikan" data-original-title="null">
                        <div data-v-5beb607e="" id="vs6__combobox" role="combobox" aria-expanded="false"
                            aria-owns="vs6__listbox" aria-label="Search for option"
                            class="vs__dropdown-toggle transition-all border bg-white h-10">
                            <div data-v-5beb607e="" class="vs__selected-options"><input data-v-5beb607e=""
                                    required="required" disabled="disabled" placeholder="Pilih Jenjang Pendidikan di UT"
                                    aria-autocomplete="list" aria-labelledby="vs6__combobox"
                                    aria-controls="vs6__listbox" type="search" autocomplete="off" class="vs__search">
                            </div>
                            <div data-v-5beb607e="" class="vs__actions"><button data-v-5beb607e="" disabled="disabled"
                                    type="button" title="Clear Selected" aria-label="Clear Selected" class="vs__clear"
                                    style="display: none;"><svg data-v-5beb607e="" xmlns="http://www.w3.org/2000/svg"
                                        width="10" height="10">
                                        <path
                                            d="M6.895455 5l2.842897-2.842898c.348864-.348863.348864-.914488 0-1.263636L9.106534.261648c-.348864-.348864-.914489-.348864-1.263636 0L5 3.104545 2.157102.261648c-.348863-.348864-.914488-.348864-1.263636 0L.261648.893466c-.348864.348864-.348864.914489 0 1.263636L3.104545 5 .261648 7.842898c-.348864.348863-.348864.914488 0 1.263636l.631818.631818c.348864.348864.914773.348864 1.263636 0L5 6.895455l2.842898 2.842897c.348863.348864.914772.348864 1.263636 0l.631818-.631818c.348864-.348864.348864-.914489 0-1.263636L6.895455 5z">
                                        </path>
                                    </svg></button><svg data-v-5beb607e="" xmlns="http://www.w3.org/2000/svg" width="14"
                                    height="10" role="presentation" class="vs__open-indicator">
                                    <path
                                        d="M9.211364 7.59931l4.48338-4.867229c.407008-.441854.407008-1.158247 0-1.60046l-.73712-.80023c-.407008-.441854-1.066904-.441854-1.474243 0L7 5.198617 2.51662.33139c-.407008-.441853-1.066904-.441853-1.474243 0l-.737121.80023c-.407008.441854-.407008 1.158248 0 1.600461l4.48338 4.867228L7 10l2.211364-2.40069z">
                                    </path>
                                </svg>
                                <div data-v-5beb607e="" class="vs__spinner" style="display: none;">Loading...</div>
                            </div>
                        </div>
                        <ul data-v-5beb607e="" id="vs6__listbox" role="listbox"
                            style="display: none; visibility: hidden;">
                        </ul>
                    </div>
                    <div class="flex flex-wrap sm:flex-nowrap place-items-center gap-x-2">
                        <div data-v-5beb607e="" dir="auto"
                            class="v-select w-full my-1 vs--single vs--searchable vs--disabled has-tooltip"
                            id="idProgramStudi" data-original-title="null">
                            <div data-v-5beb607e="" id="vs7__combobox" role="combobox" aria-expanded="false"
                                aria-owns="vs7__listbox" aria-label="Search for option"
                                class="vs__dropdown-toggle transition-all border bg-white h-10">
                                <div data-v-5beb607e="" class="vs__selected-options"><input data-v-5beb607e=""
                                        required="required" disabled="disabled" placeholder="Pilih Program Studi di UT"
                                        aria-autocomplete="list" aria-labelledby="vs7__combobox"
                                        aria-controls="vs7__listbox" type="search" autocomplete="off"
                                        class="vs__search">
                                </div>
                                <div data-v-5beb607e="" class="vs__actions"><button data-v-5beb607e=""
                                        disabled="disabled" type="button" title="Clear Selected"
                                        aria-label="Clear Selected" class="vs__clear" style="display: none;"><svg
                                            data-v-5beb607e="" xmlns="http://www.w3.org/2000/svg" width="10"
                                            height="10">
                                            <path
                                                d="M6.895455 5l2.842897-2.842898c.348864-.348863.348864-.914488 0-1.263636L9.106534.261648c-.348864-.348864-.914489-.348864-1.263636 0L5 3.104545 2.157102.261648c-.348863-.348864-.914488-.348864-1.263636 0L.261648.893466c-.348864.348864-.348864.914489 0 1.263636L3.104545 5 .261648 7.842898c-.348864.348863-.348864.914488 0 1.263636l.631818.631818c.348864.348864.914773.348864 1.263636 0L5 6.895455l2.842898 2.842897c.348863.348864.914772.348864 1.263636 0l.631818-.631818c.348864-.348864.348864-.914489 0-1.263636L6.895455 5z">
                                            </path>
                                        </svg></button><svg data-v-5beb607e="" xmlns="http://www.w3.org/2000/svg"
                                        width="14" height="10" role="presentation" class="vs__open-indicator">
                                        <path
                                            d="M9.211364 7.59931l4.48338-4.867229c.407008-.441854.407008-1.158247 0-1.60046l-.73712-.80023c-.407008-.441854-1.066904-.441854-1.474243 0L7 5.198617 2.51662.33139c-.407008-.441853-1.066904-.441853-1.474243 0l-.737121.80023c-.407008.441854-.407008 1.158248 0 1.600461l4.48338 4.867228L7 10l2.211364-2.40069z">
                                        </path>
                                    </svg>
                                    <div data-v-5beb607e="" class="vs__spinner" style="display: none;">Loading...</div>
                                </div>
                            </div>
                            <ul data-v-5beb607e="" id="vs7__listbox" role="listbox"
                                style="display: none; visibility: hidden;"></ul>
                        </div><!---->
                    </div><!----><!---->
                    <div data-v-5beb607e="" dir="auto"
                        class="v-select w-full my-1 vs--single vs--searchable vs--disabled" id="idUpbjj"
                        data-original-title="null">
                        <div data-v-5beb607e="" id="vs8__combobox" role="combobox" aria-expanded="false"
                            aria-owns="vs8__listbox" aria-label="Search for option"
                            class="vs__dropdown-toggle transition-all border bg-white h-10">
                            <div data-v-5beb607e="" class="vs__selected-options"><input data-v-5beb607e=""
                                    required="required" disabled="disabled" placeholder="Pilih Kantor Cabang UT"
                                    aria-autocomplete="list" aria-labelledby="vs8__combobox"
                                    aria-controls="vs8__listbox" type="search" autocomplete="off" class="vs__search">
                            </div>
                            <div data-v-5beb607e="" class="vs__actions"><button data-v-5beb607e="" disabled="disabled"
                                    type="button" title="Clear Selected" aria-label="Clear Selected" class="vs__clear"
                                    style="display: none;"><svg data-v-5beb607e="" xmlns="http://www.w3.org/2000/svg"
                                        width="10" height="10">
                                        <path
                                            d="M6.895455 5l2.842897-2.842898c.348864-.348863.348864-.914488 0-1.263636L9.106534.261648c-.348864-.348864-.914489-.348864-1.263636 0L5 3.104545 2.157102.261648c-.348863-.348864-.914488-.348864-1.263636 0L.261648.893466c-.348864.348864-.348864.914489 0 1.263636L3.104545 5 .261648 7.842898c-.348864.348863-.348864.914488 0 1.263636l.631818.631818c.348864.348864.914773.348864 1.263636 0L5 6.895455l2.842898 2.842897c.348863.348864.914772.348864 1.263636 0l.631818-.631818c.348864-.348864.348864-.914489 0-1.263636L6.895455 5z">
                                        </path>
                                    </svg></button><svg data-v-5beb607e="" xmlns="http://www.w3.org/2000/svg" width="14"
                                    height="10" role="presentation" class="vs__open-indicator">
                                    <path
                                        d="M9.211364 7.59931l4.48338-4.867229c.407008-.441854.407008-1.158247 0-1.60046l-.73712-.80023c-.407008-.441854-1.066904-.441854-1.474243 0L7 5.198617 2.51662.33139c-.407008-.441853-1.066904-.441853-1.474243 0l-.737121.80023c-.407008.441854-.407008 1.158248 0 1.600461l4.48338 4.867228L7 10l2.211364-2.40069z">
                                    </path>
                                </svg>
                                <div data-v-5beb607e="" class="vs__spinner" style="display: none;">Loading...</div>
                            </div>
                        </div>
                        <ul data-v-5beb607e="" id="vs8__listbox" role="listbox"
                            style="display: none; visibility: hidden;">
                        </ul>
                    </div>
                    <div class="flex place-items-center mt-1 bg-white px-2 transition-all border h-10 rounded w-full has-tooltip"
                        data-original-title="Diutamakan No HP Terdaftar Whatsapp"><!---->
                        <div class="ml-1 w-5 flex place-items-center"><svg width="20" height="20" fill="none"
                                xmlns="http://www.w3.org/2000/svg" class="">
                                <path
                                    d="M2.5 4.167v11.667c0 1.834 1.495 2.5 2.5 2.5h12.5v-1.667H5.01c-.385-.01-.843-.162-.843-.833 0-.672.458-.824.843-.834H17.5V3.334c0-.92-.747-1.667-1.667-1.667H5c-1.005 0-2.5.666-2.5 2.5z"
                                    fill="#2C3A4B"></path>
                            </svg></div><input placeholder="Nomor Handphone / WA" type="text" name=""
                            required="required" class="pl-2 pr-3 outline-none w-full">
                    </div>
                    <div class="flex place-items-center mt-1 bg-white px-2 transition-all border h-10 rounded"
                        title="Masukkan E-mail Yang Aktif Anda Gunakan"><!---->
                        <div class="ml-1 w-5 flex place-items-center"><svg width="18" height="14" fill="none"
                                xmlns="http://www.w3.org/2000/svg" class="">
                                <path
                                    d="M17.336 2.002c0-.917-.75-1.667-1.666-1.667H2.336C1.42.335.67 1.085.67 2.002v10c0 .916.75 1.666 1.666 1.666H15.67c.916 0 1.666-.75 1.666-1.666v-10zm-1.666 0L9.003 6.168 2.336 2.002H15.67zm0 10H2.336V3.668l6.667 4.167 6.667-4.167v8.334z"
                                    fill="#394452"></path>
                            </svg></div><input placeholder="E-mail Anda" type="text" name="" required="required"
                            class="pl-2 pr-3 outline-none w-full">
                    </div>
                    <div class="text-status-error text-left text-sm mt-1" style="display: none;"> Format email tidak
                        sesuai </div>
                    <div data-v-7b3fac45=""
                        class="flex place-items-center mt-1 bg-white px-2 transition-all border h-10 " minlength="6"
                        title="Buat Password Anda Minimal 6 Karakter"><!---->
                        <div data-v-7b3fac45="" class="w-5"><svg data-v-7b3fac45="" width="14" height="19" fill="none"
                                xmlns="http://www.w3.org/2000/svg" class="">
                                <path data-v-7b3fac45=""
                                    d="M6.997 14.168a1.667 1.667 0 100-3.333 1.667 1.667 0 000 3.333zm5-7.5a1.667 1.667 0 011.667 1.667v8.333a1.667 1.667 0 01-1.667 1.667h-10A1.667 1.667 0 01.33 16.668V8.335a1.667 1.667 0 011.667-1.667h.833V5.002a4.167 4.167 0 118.334 0v1.666h.833zm-5-4.166a2.5 2.5 0 00-2.5 2.5v1.666h5V5.002a2.5 2.5 0 00-2.5-2.5z"
                                    fill="#2C3A4B"></path>
                            </svg></div><input data-v-7b3fac45="" placeholder="Buat Password" required="required"
                            type="password" class="px-3 outline-none w-full">
                        <div data-v-7b3fac45="" class="cursor-pointer"><svg data-v-7b3fac45="" aria-hidden="true"
                                focusable="false" data-prefix="fa" data-icon="eye" role="img"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
                                class="svg-inline--fa fa-eye fa-w-18">
                                <path data-v-7b3fac45="" fill="currentColor"
                                    d="M572.52 241.4C518.29 135.59 410.93 64 288 64S57.68 135.64 3.48 241.41a32.35 32.35 0 0 0 0 29.19C57.71 376.41 165.07 448 288 448s230.32-71.64 284.52-177.41a32.35 32.35 0 0 0 0-29.19zM288 400a144 144 0 1 1 144-144 143.93 143.93 0 0 1-144 144zm0-240a95.31 95.31 0 0 0-25.31 3.79 47.85 47.85 0 0 1-66.9 66.9A95.78 95.78 0 1 0 288 160z"
                                    class=""></path>
                            </svg></div>
                    </div>
                    <div data-v-7b3fac45=""
                        class="rounded-b-lg flex place-items-center mt-1 bg-white px-2 transition-all border h-10 "
                        title="Masukkan Kembali Password Anda"><!---->
                        <div data-v-7b3fac45="" class="w-5"><svg data-v-7b3fac45="" width="14" height="19" fill="none"
                                xmlns="http://www.w3.org/2000/svg" class="">
                                <path data-v-7b3fac45=""
                                    d="M6.997 14.168a1.667 1.667 0 100-3.333 1.667 1.667 0 000 3.333zm5-7.5a1.667 1.667 0 011.667 1.667v8.333a1.667 1.667 0 01-1.667 1.667h-10A1.667 1.667 0 01.33 16.668V8.335a1.667 1.667 0 011.667-1.667h.833V5.002a4.167 4.167 0 118.334 0v1.666h.833zm-5-4.166a2.5 2.5 0 00-2.5 2.5v1.666h5V5.002a2.5 2.5 0 00-2.5-2.5z"
                                    fill="#2C3A4B"></path>
                            </svg></div><input data-v-7b3fac45="" placeholder="Konfirmasi Buat Password"
                            required="required" type="password" class="px-3 outline-none w-full">
                        <div data-v-7b3fac45="" class="cursor-pointer"><svg data-v-7b3fac45="" aria-hidden="true"
                                focusable="false" data-prefix="fa" data-icon="eye" role="img"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"
                                class="svg-inline--fa fa-eye fa-w-18">
                                <path data-v-7b3fac45="" fill="currentColor"
                                    d="M572.52 241.4C518.29 135.59 410.93 64 288 64S57.68 135.64 3.48 241.41a32.35 32.35 0 0 0 0 29.19C57.71 376.41 165.07 448 288 448s230.32-71.64 284.52-177.41a32.35 32.35 0 0 0 0-29.19zM288 400a144 144 0 1 1 144-144 143.93 143.93 0 0 1-144 144zm0-240a95.31 95.31 0 0 0-25.31 3.79 47.85 47.85 0 0 1-66.9 66.9A95.78 95.78 0 1 0 288 160z"
                                    class=""></path>
                            </svg></div>
                    </div>
                </div>
                <div class="text-status-error text-left text-sm mt-1"><!----><!----><!---->
                    <div class="hints p-2 mt-2 w-full">
                        <h2>Petunjuk Password</h2>
                        <p> Minimal 6 karakter. </p>
                        <p> Harus mengandung minimal satu huruf kecil. </p>
                        <p> Harus mengandung minimal satu huruf besar. </p>
                        <p> Harus mengandung minimal satu angka. </p>
                    </div>
                </div>
                <div class="pt-2">
                    <div class="text-left text-sm text-neutral-black"> Silahkan jawab pertanyaan berikut </div>
                    <div class="flex pt-3">
                        <div class="min-w-max text-center rounded-md bg-action-neutral-background-3 text-neutral-4">
                            <canvas width="75" height="40" id="capUt" class="block"></canvas>
                        </div>
                        <div class="px-4 text-base place-self-center">=</div>
                        <div class="flex"><input placeholder="Jawaban Anda" type="text" title="Jawaban Anda"
                                required="required"
                                class="w-full outline-none border-2 border-transparent transition-all rounded-md mr-2 px-2 placeholder-neutral-7 text-center">
                            <div title="Buat Pertanyaan Baru"
                                class="rounded-md grid place-items-center bg-primary-link hover:bg-opacity-75 text-neutral-white w-14 cursor-pointer">
                                <svg aria-hidden="true" focusable="false" data-prefix="fa" data-icon="redo" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
                                    class="svg-inline--fa fa-redo fa-w-16">
                                    <path fill="currentColor"
                                        d="M500.33 0h-47.41a12 12 0 0 0-12 12.57l4 82.76A247.42 247.42 0 0 0 256 8C119.34 8 7.9 119.53 8 256.19 8.1 393.07 119.1 504 256 504a247.1 247.1 0 0 0 166.18-63.91 12 12 0 0 0 .48-17.43l-34-34a12 12 0 0 0-16.38-.55A176 176 0 1 1 402.1 157.8l-101.53-4.87a12 12 0 0 0-12.57 12v47.41a12 12 0 0 0 12 12h200.33a12 12 0 0 0 12-12V12a12 12 0 0 0-12-12z"
                                        class=""></path>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mt-4"><button class="w-full button__primary  --variant-primary hover:opacity-75 p-2">
                        <div style="display: none;">Mohon Tunggu...</div>
                        <div>Buat Akun Mahasiswa Baru <svg aria-hidden="true" focusable="false" data-prefix="fa"
                                data-icon="arrow-right" role="img" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 448 512" class="svg-inline--fa fa-arrow-right fa-w-14">
                                <path fill="currentColor"
                                    d="M190.5 66.9l22.2-22.2c9.4-9.4 24.6-9.4 33.9 0L441 239c9.4 9.4 9.4 24.6 0 33.9L246.6 467.3c-9.4 9.4-24.6 9.4-33.9 0l-22.2-22.2c-9.5-9.5-9.3-25 .4-34.3L311.4 296H24c-13.3 0-24-10.7-24-24v-32c0-13.3 10.7-24 24-24h287.4L190.9 101.2c-9.8-9.3-10-24.8-.4-34.3z"
                                    class=""></path>
                            </svg></div>
                    </button></div>
                <div class="flex justify-center font-bold text-status-info mt-4"><a href="/beranda/panduan-mahasiswa"
                        class="block p-2 hover:bg-blue-50 transition-colors cursor-pointer rounded"> Panduan </a><a
                        href="https://www.ut.ac.id/kalender-akademik" target="_blank"
                        class="block p-2 hover:bg-blue-50 transition-colors cursor-pointer rounded"> Kalender Akademik
                    </a><a href="/beranda/faq"
                        class="block p-2 hover:bg-blue-50 transition-colors cursor-pointer rounded">
                        FAQ </a></div>
                <div class="my-4 mt-0 py-4">
                    <div class="underline text-gray-400"><a href="/auth/login" class=""><svg aria-hidden="true"
                                focusable="false" data-prefix="fa" data-icon="arrow-left" role="img"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
                                class="mr-2 svg-inline--fa fa-arrow-left fa-w-14">
                                <path fill="currentColor"
                                    d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z"
                                    class=""></path>
                            </svg>Kembali </a></div>
                </div>
            </form>
        </div>
        <form @submit.prevent="submit">
            <div>
                <h1>Siste</h1>
            </div>
            <div>
                <InputLabel for="name" value="Name" />

                <TextInput id="name" type="text" class="mt-1 block w-full" v-model="form.name" required autofocus
                    autocomplete="name" />

                <InputError class="mt-2" :message="form.errors.name" />
            </div>

            <div class="mt-4">
                <InputLabel for="email" value="Email" />

                <TextInput id="email" type="email" class="mt-1 block w-full" v-model="form.email" required
                    autocomplete="username" />

                <InputError class="mt-2" :message="form.errors.email" />
            </div>

            <div class="mt-4">
                <InputLabel for="password" value="Password" />

                <TextInput id="password" type="password" class="mt-1 block w-full" v-model="form.password" required
                    autocomplete="new-password" />

                <InputError class="mt-2" :message="form.errors.password" />
            </div>

            <div class="mt-4">
                <InputLabel for="password_confirmation" value="Confirm Password" />

                <TextInput id="password_confirmation" type="password" class="mt-1 block w-full"
                    v-model="form.password_confirmation" required autocomplete="new-password" />

                <InputError class="mt-2" :message="form.errors.password_confirmation" />
            </div>

            <div class="flex items-center justify-end mt-4">
                <Link :href="route('login')"
                    class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                Already registered?
                </Link>

                <PrimaryButton class="ms-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                    Register
                </PrimaryButton>
            </div>
        </form>
    </GuestLayout>
</template>
