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
