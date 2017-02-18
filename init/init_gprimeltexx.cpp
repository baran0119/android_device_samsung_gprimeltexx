#include <stdlib.h>
#include <stdio.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

void vendor_load_properties()
{
    std::string platform;

    platform = property_get("ro.board.platform");
    if (platform != ANDROID_TARGET)
        return;

    property_set("ro.product.device", "gprimeltexx");
    property_set("ro.product.model", "SM-G530FZ");
    property_set("ro.product.name", "gprimeltexx");
}
