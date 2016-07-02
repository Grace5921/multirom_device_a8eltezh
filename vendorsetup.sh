device=a8eltezh
add_lunch_combo omni_a8eltezh-userdebug
function mkazip_a8eltezh
{
lunch omni_a8eltezh-userdebug
mka -j4 recoveryimage
cp device/samsung/$device/META-INF.zip out/target/product/$device/META-INF.zip 
cd out/target/product/$device/
unzip META-INF.zip 
rm META-INF.zip 
zip twrp-3.0.2.zip -r recovery.img -r META-INF
cd ../../../../
}

function multirom_a8eltezh
{
lunch omni_a8eltezh-userdebug
make -j4 multirom trampoline
mka -j4 recoveryimage
cp device/samsung/$device/META-INF.zip out/target/product/$device/META-INF.zip 
cd out/target/product/$device/
unzip META-INF.zip 
rm META-INF.zip 
zip multirom-$(date +%Y%m%d)-3.0.28-UNOFFICIAL-a8eltezh.zip -r recovery.img -r META-INF
rm -rf META-INF
cd ../../../../
}
