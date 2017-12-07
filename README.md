# obfuscate

This project uses a simple hack to hide a file inside an image file. Once the file is concealed, the image will behave normally while the hidden file can be later retrieved from the command line.

The included implementation also makes use of a hex converter to obfuscate the file a little more.

Note that this method of hiding a file is not safe against an attack. Most programs used to search for hidden files will easily be able to find the file.

Included are two sample images. They can be used to test the program by running the following commands:

```sh
attach Lenna.png Teapot.png
rm Lenna.png
retrieve Lenna.png Teapot.png
```

All credits for the images go to their rightful owner. The original copy of `Lenna.png` can be accessed at `https://en.wikipedia.org/wiki/File:Lenna.png`. The original copy of `Teapot.png` can be accessed at `https://commons.wikimedia.org/wiki/File:Utah_teapot_simple_2.png`.
