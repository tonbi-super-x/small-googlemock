#include "mock-turtle.h"
#include "gmock/gmock.h"
#include "gtest/gtest.h"
using ::testing::AtLeast;

class Painter {
    public:
    Painter(MockTurtle *turtle) {
        this->turtle = turtle;
    }
    int DrawCircle(int a, int b, int c){
        this->turtle->PenUp();
        return 1;
    }
    private :
    Turtle *turtle;
};

TEST(PainterTest, CanDrawSomething)
{
    MockTurtle turtle;             // #2
    EXPECT_CALL(turtle, PenUp()) // #3
        .Times(AtLeast(1));

    Painter painter(&turtle); // #4

    EXPECT_TRUE(painter.DrawCircle(0, 0, 10));
}

int main(int argc, char** argv) {
  // 以下の行は，テスト開始前に Google Mock （と Google Test）
  // を初期化するために必ず実行する必要があります．
  ::testing::InitGoogleMock(&argc, argv);
  return RUN_ALL_TESTS();
}