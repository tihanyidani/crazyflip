#include "Pilot.h"

int main(int argc, char **argv) {

    Pilot* pilot = new Pilot(argc, argv);
    pilot->run();

    return 0;
}