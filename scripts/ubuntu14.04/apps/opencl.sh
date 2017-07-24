# ref: https://gist.github.com/rmcgibbo/6314452

# download opencl sdk
tar -xzvf intel_sdk_for_ocl_applications_2013_xe_sdk_3.0.67279_x64.tgz
cd  intel_sdk_for_ocl_applications_2013_xe_sdk_3.0.67279_x64

# cd rpm
# convert *.rpm to *.deb and install
#/bin/bash
for f in *.rpm; do
  fakeroot alien --to-deb $f
done
for f in *.deb; do
  sudo dpkg -i $f
done

# check intel.icd
ls /etc/OpenCL/vendors/

# check opencl platform
