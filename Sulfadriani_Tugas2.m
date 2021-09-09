%Citra Asli
i = imread('ulfa.jpg');
figure(1); imshow(i)

%Citra Keabuan
a = rgb2gray(i);
figure(2); imshow(a)

%Citra Biner
[tinggi,lebar] = size(i);
ambang = 210;%
biner = zeros(tinggi,lebar);
for baris=1 : tinggi
    for kolom=1 : lebar
        if i(baris, kolom)>=ambang
            biner(baris, kolom)=0;
        else
            biner(baris, kolom)=1;
        end
    end
end
imshow(biner);

%Kontras
c = a + 50;
figure(4); imshow (c)

%Brihtness
d = a * 1.1;
figure(5); imshow(d)

