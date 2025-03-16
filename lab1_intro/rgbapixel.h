/**
 * @file rgbapixel.h
 * Definition of the RGBAPixel class for the EasyPNG library.
 *
 * @author Chase Geigle
 * @author Anna LaValle
 * @date Created: Spring 2012
 * @date Modified: Spring 2025
 */

#ifndef RGBAPIXEL_H
#define RGBAPIXEL_H

#include <stdint.h>
#include <cstdint>

// Your code here

class RGBAPixel
{
    // my four public variables
public:
    std::uint8_t red;
    std::uint8_t green;
    std::uint8_t blue;
    std::uint8_t alpha;

    // default constructor
    RGBAPixel();

    // constructor with four parameters
    RGBAPixel(uint8_t _r, uint8_t _g, uint8_t _b);
};

#endif
