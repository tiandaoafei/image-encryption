# 图像加密算法

标签（空格分隔）： 编程 Matlab

---

原图像（original）
![] (https://raw.githubusercontent.com/tiandaoafei/image-encryption/master/origin.bmp)
密钥图像（key)
![] (https://raw.githubusercontent.com/tiandaoafei/image-encryption/master/key.bmp)
加密图像（encrypt)
![] (https://raw.githubusercontent.com/tiandaoafei/image-encryption/master/encrypt.bmp)
解密（decipher）

算法（arithmetic）:
```matlab
function encrypt(o)
img=imread(o);
key=imread('key.bmp');
[m,n]=size(img);
mk=fix(m/64);
nk=fix(n/64);
new=key;
for i=1:mk
	new=[new,key];
end
key=new;
for i=1:nk
	new=[new;key];
end
img=bitxor(img,new(1:m,1:n));
imwrite(img,'encrypt.bmp');
```

