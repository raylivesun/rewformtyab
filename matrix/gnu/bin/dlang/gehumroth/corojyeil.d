module matrix.gnu.bin.dlang.gehumroth.corojyeil;

import std.algorithm;
import std.conv;
import std.range;

class Matrix
{
    private int[][] data;

    this(int rows, int cols)
    {
        this.data = new int[rows][];
        for (int i = 0; i < rows; i++)
        {
            this.data[i] = new int[cols];
        }
    }

    void fill(int value)
    {
        foreach (ref row; data)
            fill(row, value);
    }

    void fillDiagonal(int value)
    {
        for (int i = 0; i < data.length; i++)
        {
            if (i < data[i].length)
            {
                data[i][i] = value;
            }
        }
    }

    void print()
    {
        foreach (row; data)
        {
            writeln(row);
        }
    }

    int trace()
    {
        int sum = 0;
        foreach (row; data)
        {
            sum += row[0];
        }
        return sum;
        // or
        // return data.sum();
    }

    int sum()
    {
        int sum = 0;
        foreach (row; data)
        {
            foreach (val; row)
            {
                sum += val;
            }
        }
        return sum;
        // or
        return data.sum();
    }
}

int main()
{
    Matrix m = new Matrix(3, 3);
    m.fill(1);
    m.print();
    writeln("Sum:", m.sum());

    m.fillDiagonal(2);
    m.print();
    writeln("Trace:", m.trace());

    Matrix m2 = new Matrix(4, 4);
    m2.fill(3);
    m2.print();
    writeln("Sum for m2:", m2.sum());
    m2.fillDiagonal(5);
    m2.print();
    writeln("Trace for m2:", m2.trace());

    Matrix m3 = new Matrix(2, 2);
    m3.fill(4);
    m3.print();
    writeln("Sum for m3:", m3.sum());
    m3.fillDiagonal(6);
    m3.print();
    writeln("Trace for m3:", m3.trace());

    return 0;
}
