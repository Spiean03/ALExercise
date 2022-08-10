codeunit 50129 IntegerFunctionTest
{
    Subtype = Test;

    [Test]
    Procedure ReturnTest();
    var
        IntegerFunctions: Codeunit IntegerFunctions;
        Assert: Codeunit "Library Assert";
    begin
        assert.IsFalse(4 = 3, '4 is not equal to 3');
        assert.IsTrue(4 = 4, '4 is equal to 4');
        assert.IsFalse(IntegerFunctions.Return(4) = 3, '4 is not equal to 3');
        assert.IsTrue(IntegerFunctions.Return(4) = 4, '4 is equal to 4');

    end;

}