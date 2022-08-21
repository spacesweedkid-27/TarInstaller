sudo echo "Extracting $1"

mkdir temp
cd temp

cp -r "../$1" ./archive.tar

tar -xf ./archive.tar
rm ./archive.tar

filename=$(ls ./)

sudo cp -r ./$filename /usr/lib/
sudo ln -fs /usr/lib/$filename/bin/* /bin/

cd ..
rm -rf ./temp

echo installation of $filename finished
