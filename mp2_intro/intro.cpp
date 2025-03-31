#include "RGBA/png.h"
#include "RGBA/rgbapixel.h"

#include <string>
#include <cmath>

void rotate(const std::string & inputFile, const std::string & outputFile) {
	PNG img;
   img.readFromFile(inputFile);
	// Get dimensions of the original image
    size_t width = img.width();
    size_t height = img.height();

    // Create a new image with swapped dimensions
    PNG rotated(height, width);

    // Rotate pixels
    for (size_t x = 0; x < width; ++x) {
        for (size_t y = 0; y < height; ++y) {
            rotated(y, width - x - 1) = img(x, y);
        }
    }

    // Write the rotated image to the output file
    rotated.writeToFile(outputFile);
    
}

PNG myArt(unsigned int width, unsigned int height) {
	PNG png(width, width);

    // Generate a radial gradient
    int centerX = width / 2;
    int centerY = width / 2;

    for (unsigned int x = 0; x < width; ++x) {
        for (unsigned int y = 0; y < width; ++y) {
            // Calculate distance from the center
            double dist = std::sqrt((x - centerX) * (x - centerX) + (y - centerY) * (y - centerY));

            // Map distance to a color gradient
            RGBAPixel& pixel = png(x, y);
            pixel.red = static_cast<unsigned char>(255 * (dist / centerX));
            pixel.green = static_cast<unsigned char>(255 * (1 - dist / centerX));
            pixel.blue = 128; // Constant blue channel
            pixel.alpha = 255; // Fully opaque
        }
    }

    return png;
}
