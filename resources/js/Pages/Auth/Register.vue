<script setup>
import GuestLayout from '@/Layouts/GuestLayout.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';
import { Head, Link, useForm } from '@inertiajs/vue3';
import { onMounted, ref, watch } from 'vue';

const selectedProvinsi = ref('');
const selectedKota = ref('');
const selectedProvinsiLahir = ref('');
const selectedKotaLahir = ref('');

const selectedKewarganegaraan = ref('');
const selectedTempat = ref('tidak');

const provinsiList = ref([]);
const kotaList = ref([]);
const kotaLahirList = ref([]);
const agamaList = ref([]);

const provinsiSelect = ref(null);
const kotaSelect = ref(null);
const provinsiLahirSelect = ref(null);
const kotaLahirSelect = ref(null);

const isValidEmail = ref(true);
const isValidTelepon = ref(true);
const isValidPhoneNumber = ref(true);
const isValidNEM = ref(true);

const form = useForm({
    namaLengkap: '',
    alamatKtp: '',
    alamatDomisili: '',
    regionKtpId: '',
    regionLahirId: '',
    kecamatan: '',
    nomorTelepon: '',
    nomorHp: '',
    email: '',
    kewarganegaraan: '',
    negaraWNA: '',
    tanggalLahir: '',
    tempatLahir: '',
    jenisKelamin: '',
    statusMenikah: '',
    agama: '',
    nem: '',
});

// Fetch the list of provinces on component mount
const fetchProvinces = async () => {
    try {
        const response = await axios.get('/api/provinces');
        provinsiList.value = response.data;
    } catch (error) {
        console.error('Error fetching provinces:', error);
    }
};

// Fetch the list of cities when a province is selected
const fetchCities = async (provinceId, isTempatLahir = false) => {
    try {
        const response = await axios.get(`/api/cities/${provinceId}`);

        if (isTempatLahir) {
            kotaLahirList.value = response.data
            form.regionLahirId = response.data[0].id
        } else {
            kotaList.value = response.data;
            form.regionKtpId = response.data[0].id
        }
    } catch (error) {
        console.error('Error fetching cities lahir:', error);
    }
};

const fetchAgama = async () => {
    try {
        const response = await axios.get(`/api/agama`);
        agamaList.value = response.data;

    } catch (error) {
        console.error('Error fetching cities:', error);
    }
};


const validateEmail = () => {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    isValidEmail.value = re.test(String(form.email).toLowerCase());
};

const validateNEM = () => {
    const re = /^[+-]?\d+(\.\d+)?$/;
    isValidNEM.value = re.test(String(form.nem).toLowerCase());
};

const validatePhoneNumber = (isPhoneNumber) => {
    const phoneNumberRegex = /^\d+$/;

    if (isPhoneNumber) {
        isValidPhoneNumber.value = phoneNumberRegex.test(form.nomorHp);
    } else {
        isValidTelepon.value = phoneNumberRegex.test(form.nomorTelepon);
    }
};

const validateForm = () => {
    // Check if any field is empty
    const isEmpty = Object.values(form.data).some(value => value.trim() === '');

    if (isEmpty) {
        alert("Please fill out all fields.");
        return;
    }

    if (!isValidEmail.value) {
        alert("Please enter a valid email address");
        return;
    }
    if (!isValidNEM.value) {
        alert("Please enter a valid NEM");
        return;
    }

    if (!isValidPhoneNumber.value) {
        alert("Isian Nomor harus format angka");
        return;
    }
};

const submitForm = () => {
    validateForm()

    Swal.fire({
        title: "Apakah and yakin ingin mendaftar ?",
        text: "Pastikan Data Anda Benar.",
        icon: "info",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Ya!",
        cancelButtonText: "Cek lagi"
    }).then((result) => {
        if (result.isConfirmed) {
            form.post(route('registrasi.mahasiswa-baru'), {
                onSuccess: (response) => {
                    console.log(response);
                    Swal.fire({
                        title: "Berhasil !",
                        text: "Data Anda Akan di verifikasi terlebih dahulu oleh admin.",
                        icon: "success"
                    });
                },
                onError: (err) => {
                    for (const [key, message] of Object.entries(err)) {
                        // Use SweetAlert to display each error message
                        Swal.fire({
                            title: "Gagal!",
                            text: `Gagal: ${message}`,
                            icon: "error"
                        });
                    }

                },
            });

        }
    });


};

// Watch for changes in the selected province and fetch the corresponding cities
watch(selectedProvinsi, (newProvinsiId) => {
    if (newProvinsiId) {
        fetchCities(newProvinsiId);
    } else {
        kotaList.value = [];
        selectedKota.value = '';
    }
});

watch(selectedProvinsiLahir, (newProvinsiId) => {
    if (newProvinsiId) {
        fetchCities(newProvinsiId, true);
    } else {
        kotaList.value = [];
        selectedKota.value = '';
    }
});

// watch(form, (newProvinsiId) => {
//     console.log(newProvinsiId)
// });


onMounted(() => {
    fetchProvinces();
    fetchAgama();

    // Initialize Select2 for both selects
    $(provinsiSelect.value).select2().on('select2:select', (e) => {
        selectedProvinsi.value = e.target.value;
    });

    $(provinsiLahirSelect.value).select2().on('select2:select', (e) => {
        selectedProvinsiLahir.value = e.target.value;
    });


    $(kotaSelect.value).select2().on('select2:select', (e) => {
        form.regionKtpId = parseInt(e.target.value);
    });

    $(kotaLahirSelect.value).select2().on('select2:select', (e) => {
        form.regionLahirId = parseInt(e.target.value);
    });


    $('#kewarganegaraan').on('change', (e) => {
        form.kewarganegaraan = e.target.value
    });
});

</script>

<template>
    <GuestLayout>

        <Head title="Register" />
        <div class="p-8 py-3 mx-auto ">
            <form @submit.prevent="submitForm" method="post">
                <div class="text-center">
                    <p class="text-2xl">Sistem Informasi Akademik</p>
                    <p class="text-2xl text-[#008797] font-bold"> POLITEKNIK NEGERI JAKARTA </p>
                    <p class="py-2 text-[#1a484e] font-semibold"> Pendaftaran Calon Mahasiswa </p>
                </div>


                <div>
                    <div class="mt-10 grid grid-cols-6 gap-x-6 gap-y-8">
                        <div class="col-span-full">
                            <label for="nama_lengkap" class="block text-sm font-medium leading-6 text-gray-900">
                                Nama Lengkap <br />
                                (sesuai ijazah disertasi gelar)
                            </label>
                            <div class="mt-2">
                                <input required placeholder="Nama Lengkap" type="text" name="first-name" id="first-name"
                                    autocomplete="name" v-model="form.namaLengkap"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                            </div>
                        </div>

                        <div class="col-span-full">
                            <label for="alamat_ktp" class="block text-sm font-medium leading-6 text-gray-900">Alamat
                                KTP</label>
                            <div class="mt-2">
                                <textarea required v-model="form.alamatKtp" id="alamat_ktp" name="alamat_ktp" rows="2"
                                    autocomplete="street-address"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                            </div>
                        </div>
                        <div class="col-span-full">
                            <label for="alamat_domisili" class="block text-sm font-medium leading-6 text-gray-900">
                                Alamat Lengkap Saat Ini
                            </label>
                            <div class="mt-2">
                                <textarea v-model="form.alamatDomisili" id="alamat_domisili" name="alamat_domisili"
                                    rows="2" autocomplete="street-address"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                            </div>
                        </div>

                        <div class="lg:col-span-2 col-span-full">
                            <label for="provinsi"
                                class="block text-sm font-medium leading-6 text-gray-900">Provinsi</label>
                            <div class="mt-2">
                                <select required ref="provinsiSelect" id="provinsi" name="provinsi"
                                    autocomplete="address-level1"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                                    v-model="selectedProvinsi">
                                    <option value="" disabled>Pilih Provinsi</option>
                                    <option v-for="provinsi in provinsiList" :key="provinsi.name + 'ktp'"
                                        :value="provinsi.name">
                                        {{ provinsi.name }}
                                    </option>
                                </select>
                            </div>
                        </div>

                        <div class="lg:col-span-2 col-span-full">
                            <label for="kota"
                                class="block text-sm font-medium leading-6 text-gray-900">Kabupaten/Kota</label>
                            <div class="mt-2">
                                <select required ref="kotaSelect" id="kota" name="kota" autocomplete="address-level2"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600  sm:text-sm sm:leading-6">
                                    <option value="" disabled>Pilih Provinsi</option>
                                    <option v-for="kota in kotaList" :key="kota.id" :value="kota.id">
                                        {{ kota.name }}
                                    </option>
                                </select>
                            </div>
                        </div>


                        <div class="md:col-span-2 col-span-full">
                            <label for="kecamatan"
                                class="block text-sm font-medium leading-6 text-gray-900">Kecamatan</label>
                            <div class="mt-2">
                                <input required v-model="form.kecamatan" type="text" name="kecamatan" id="kecamatan"
                                    autocomplete="address-level3" placeholder="cth : Cimanggis"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                            </div>
                        </div>

                        <div class="sm:col-span-3 col-span-full">

                            <label for="nomor_telepon" class="block text-sm font-medium leading-6 text-gray-900">
                                Nomor Telepon
                            </label>
                            <div class="mt-2">
                                <input required v-model="form.nomorTelepon" id="nomor_telepon" name="nomor_telepon"
                                    type="number" autocomplete="tel" @input="() => validatePhoneNumber(false)"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                                <p v-if="!isValidTelepon" class="text-red-500">Isian harus format angka</p>

                            </div>
                        </div>

                        <div class="sm:col-span-3 col-span-full">
                            <label for="nomor_hp" class="block text-sm font-medium leading-6 text-gray-900">
                                Nomor HP
                            </label>
                            <div class="mt-2">
                                <input required v-model="form.nomorHp" id="nomor_hp" name="nomor_hp" type="number"
                                    autocomplete="tel" @input="() => validatePhoneNumber(true)"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                                <p v-if="!isValidPhoneNumber" class="text-red-500">Isian harus format angka</p>

                            </div>
                        </div>


                        <div class="sm:col-span-6 col-span-full">
                            <label for="email" class="block text-sm font-medium leading-6 text-gray-900">Email
                                address</label>
                            <div class="mt-2">
                                <input required v-model="form.email" id="email" name="email" type="email"
                                    autocomplete="email" @input="validateEmail"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                                <p v-if="!isValidEmail" class="text-red-500">Invalid email format</p>

                            </div>
                        </div>


                        <div class="col-span-full">
                            <label for="kewarganegaraan"
                                class="block text-sm font-medium leading-6 text-gray-900">Kewarganegaraan</label>
                            <div class="mt-2">
                                <select required id="kewarganegaraan" name="kewarganegaraan"
                                    v-model="selectedKewarganegaraan"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600  sm:text-sm sm:leading-6">
                                    <option>WNI Asli</option>
                                    <option>WNI Keturunan</option>
                                    <option>WNA</option>
                                </select>
                            </div>
                        </div>

                        <div v-if="selectedKewarganegaraan === 'WNA'" class="col-span-full">
                            <label for="additionalInput" class="block text-sm font-medium leading-6 text-gray-900">
                                Nama Negara WNA
                            </label>
                            <div class="mt-2">
                                <input required v-model="form.negaraWNA" id="additionalInput" name="additionalInput"
                                    type="text" placeholder="ex: Australia"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                            </div>
                        </div>

                        <div class="md:col-span-2 col-span-full">
                            <label for="pribumi" class="block text-sm font-medium leading-6 text-gray-900">Saya
                                Lahir Di Luar Negara</label>
                            <div class="mt-2">
                                <select required id="pribumi" name="pribumi"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600  sm:text-sm sm:leading-6"
                                    v-model="selectedTempat">
                                    <option value="tidak">Tidak</option>
                                    <option value="ya">Ya</option>
                                </select>
                            </div>
                        </div>

                        <div class="sm:col-span-2 col-span-full">
                            <label for="tanggal_lahir" class="block text-sm font-medium leading-6 text-gray-900">Tanggal
                                Lahir (Sesuai
                                Ijazah)</label>
                            <div class="mt-2">
                                <input required v-model="form.tanggalLahir" id="tanggal_lahir" name="tanggal_lahir"
                                    type="date"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                            </div>
                        </div>
                        <div class="sm:col-span-2 col-span-full">
                            <label for="tempat_lahir" class="block text-sm font-medium leading-6 text-gray-900">Tempat
                                Lahir
                                <span v-if="selectedTempat === 'tidak'"> (Sesuai Ijazah)</span>
                                <span v-else> (Nama Negaranya)</span>
                            </label>
                            <div class="mt-2">
                                <input required v-model="form.tempatLahir" id="tempat_lahir" name="tempat_lahir"
                                    type="text"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                            </div>
                        </div>

                        <div class="md:col-span-3 col-span-full" v-if="selectedTempat === 'tidak'">
                            <label for="provinsi_lahir"
                                class="block text-sm font-medium leading-6 text-gray-900">Provinsi</label>
                            <div class="mt-2">
                                <select :required="selectedTempat == 'ya' ? false : true" ref="provinsiLahirSelect"
                                    id="provinsi_lahir" name="provinsi_lahir"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                                    v-model="selectedProvinsiLahir">
                                    <option value="" disabled>Pilih Provinsi</option>
                                    <option v-for="(provinsi, index) in provinsiList" :key="provinsi.name + index"
                                        :value="provinsi.name">
                                        {{ provinsi.name }}
                                    </option>
                                </select>
                            </div>
                        </div>

                        <div class="md:col-span-3 col-span-full" v-if="selectedTempat === 'tidak'">
                            <label for="kota_lahir"
                                class="block text-sm font-medium leading-6 text-gray-900">Kabupaten/Kota</label>
                            <div class="mt-2">
                                <select :required="selectedTempat == 'ya' ? false : true" ref="kotaLahirSelect"
                                    id="kotaLahir" name="kota_lahir"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600  sm:text-sm sm:leading-6"
                                    v-model="form.regionLahirId">
                                    <option value="" disabled>Pilih Provinsi</option>
                                    <option v-for="kota in kotaLahirList" :key="kota.id" :value="kota.id">
                                        {{ kota.name }}
                                    </option>
                                </select>
                            </div>
                        </div>

                        <fieldset class="sm:col-span-3 col-span-full">
                            <legend class="text-sm font-semibold leading-6 text-gray-900">Jenis Kelamin
                            </legend>
                            <div class="mt-6 flex gap-6">
                                <div class="flex items-center gap-x-3">
                                    <input required id="push-everything" name="jenis_kelamin" type="radio" value="pria"
                                        v-model="form.jenisKelamin"
                                        class="h-4 w-4 border-gray-300 text-indigo-600 focus:ring-indigo-600" />
                                    <label for="push-everything"
                                        class="block text-sm font-medium leading-6 text-gray-900">Pria</label>
                                </div>

                                <div class="flex items-center gap-x-3">
                                    <input required id="push-email" name="jenis_kelamin" type="radio" value="wanita"
                                        v-model="form.jenisKelamin"
                                        class="h-4 w-4 border-gray-300 text-indigo-600 focus:ring-indigo-600" />
                                    <label for="push-email"
                                        class="block text-sm font-medium leading-6 text-gray-900">Wanita</label>
                                </div>
                            </div>
                        </fieldset>
                        <div class="sm:col-span-3 col-span-full">
                            <label for="nem" class="block text-sm font-medium leading-6 text-gray-900">
                                Nilai NEM

                            </label>
                            <div class="mt-2">
                                <input required v-model="form.nem" id="nem" name="nem" type="text" @input="validateNEM"
                                    class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6" />
                                <p v-if="!isValidNEM" class="text-red-500">Isian harus angka/decimal cth : 4.00</p>

                            </div>
                        </div>

                        <fieldset class="col-span-full">
                            <legend class="text-sm font-semibold leading-6 text-gray-900">Status Menikah
                            </legend>
                            <div class="mt-6 flex flex-wrap gap-6">
                                <div class="flex items-center gap-x-3">
                                    <input required id="push-everything2" name="status_menikah" type="radio"
                                        value="belum menikah" v-model="form.statusMenikah"
                                        class="h-4 w-4 border-gray-300 text-indigo-600 focus:ring-indigo-600" />
                                    <label for="push-everything2"
                                        class="block text-sm font-medium leading-6 text-gray-900">Belum
                                        Menikah</label>
                                </div>

                                <div class="flex items-center gap-x-3">
                                    <input required id="push-email2" name="status_menikah" type="radio" value="menikah"
                                        v-model="form.statusMenikah"
                                        class="h-4 w-4 border-gray-300 text-indigo-600 focus:ring-indigo-600" />
                                    <label for="push-email2"
                                        class="block text-sm font-medium leading-6 text-gray-900">Menikah</label>
                                </div>
                                <div class="flex items-center gap-x-3">
                                    <input required id="push-emails2" name="status_menikah" type="radio" value="lainnya"
                                        v-model="form.statusMenikah"
                                        class="h-4 w-4 border-gray-300 text-indigo-600 focus:ring-indigo-600" />
                                    <label for="push-emails2"
                                        class="block text-sm font-medium leading-6 text-gray-900">Lainnya</label>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset class="col-span-full">
                            <legend class="text-sm font-semibold leading-6 text-gray-900">Agama
                            </legend>
                            <div class="mt-6 flex flex-wrap gap-6">
                                <div class="flex items-center gap-x-3" v-for="(item, index) in agamaList"
                                    :key="item.id">
                                    <input required v-model="form.agama" :id="item.nama" name="agama" type="radio"
                                        :value="item.nama"
                                        class="h-4 w-4 border-gray-300 text-indigo-600 focus:ring-indigo-600" />
                                    <label :for="item.nama" class="block text-sm font-medium leading-6 text-gray-900">
                                        {{ item.nama }}
                                    </label>
                                </div>
                            </div>
                        </fieldset>
                    </div>

                </div>



                <div class="mt-6">
                    <button type="submit"
                        class="rounded-md w-full flex
                         bg-indigo-600 px-3 py-2 justify-center
                         text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">
                        <p class="text-center">
                            Buat Akun Mahasiswa Baru >>
                        </p>
                    </button>
                </div>
            </form>
        </div>
    </GuestLayout>
</template>
