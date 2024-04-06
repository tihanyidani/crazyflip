
#include "Orchestrator.h"

int main(int argc, char **argv) {
    
    Orchestrator* orchestrator = new Orchestrator(argc, argv);
    orchestrator->run();

    return 0;
}