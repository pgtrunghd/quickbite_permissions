#!/bin/bash

# Dung script ngay lap tuc neu co bat ky lenh nao bi loi
set -e

echo "=== 1. Tao thu muc lam viec cua du an ==="
# -p giup tu dong tao tat ca cac thu muc cha neu chua ton tai
sudo mkdir -p /opt/quickbite/user-service
echo "Da tao thu muc: /opt/quickbite/user-service"

echo "=== 2. Thay doi chu so huu (chown) ==="
# -R ap dung dong bo cho thu muc va toan bo tep tin/thu muc con ben trong
sudo chown -R quickbite:quickbite /opt/quickbite
echo "Da chuyen quyen so huu /opt/quickbite cho user 'quickbite' va group 'quickbite'"

echo "=== 3. Dat quyen han truy cap (chmod 750) ==="
# -R ap dung quyen han cho toan bo cay thu muc ben trong
sudo chmod -R 750 /opt/quickbite
echo "Da dat ma so phan quyen 750 cho /opt/quickbite"

echo "=== 4. Kiem tra lai ket qua thiet lap ==="
ls -ld /opt/quickbite
ls -la /opt/quickbite

echo ""
echo "=========================================================="
echo "GIAI THICH Y NGHIA MA SO PHAN QUYEN 750:"
echo "Ma quyen gom 3 chu so tuong ung voi 3 nhom doi tuong:"
echo " - So 7 (Chu so huu - User quickbite): Co toan quyen Doc (4), Ghi (2) va Thuc thi (1). (4+2+1=7)"
echo " - So 5 (Nhom so huu - Group quickbite): Chi co quyen Doc (4) va Thuc thi (1) de truy cap, khong co quyen ghi/sua doi. (4+1=5)"
echo " - So 0 (Nguoi dung khac - Others): Khong co bat ky quyen han nao (Khong the doc, ghi hay vao thu muc)."
echo "=========================================================="
