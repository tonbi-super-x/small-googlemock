#pragma once

#include "gmock/gmock.h"
#include "turtle.h"

class MockTurtle : public Turtle {
    public :
    // MockTurtle();
    MOCK_METHOD0(PenUp, void());
};