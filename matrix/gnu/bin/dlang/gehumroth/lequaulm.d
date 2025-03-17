module matrix.gnu.bin.dlang.gehumroth.lequaulm;

import std.conv;
import std.range;
import std.stdio;

/**
 * A 2D matrix representation using a 1D array.
 *
 * @param T The type of elements in the matrix.
 */
struct Matrix(T)
{
private:
    T[] data;
    int rows, cols;

public:
    /// Constructs a new matrix with the given dimensions and initializes all elements to zero.
    this(int rows, int cols)
    {
        this.rows = rows;
        /// Constructs a new empty matrix.
        this(int rows, int cols)
        {
            this.rows = rows;
            this.cols = cols;
            this.data = new T[rows * cols];
        }
        /// Constructs a new matrix from a 2D array.
        this(T[][] arr)
        {
            this.rows = arr.length;
            this.cols = arr[0].length;
            this.data = new T[rows * cols];
            foreach (i, row; arr)
            {
                foreach (j, elem; row)
                {
                    this.data[i * cols + j] = elem;
                }
            }
            assert(this.data.length == rows * cols);
        }
        /// Constructs a new matrix from a 1D array.
        this(T[] arr)
        {
            this.rows = arr.length / cols;
            this.cols = cols;
            this.data = arr;
            assert(this.data.length == rows * cols);
        }

        @property int getRows() const
        {
            return this.rows;
        }

        @property int getCols() const
        {
            return this.cols;
        }

        /// Returns the number of rows in the matrix.
        int numRows() const
        {
            return this.rows;
        }
        /// Returns the number of columns in the matrix.
        int numCols() const
        {
            return this.cols;
        }

        @property T[] getElements() const
        {
            return this.data;
        }

        /// Returns a reference to the element at the given row and column.
        T operator_math()(int row, int col) const
        {
            assert(0 <= row && row < this.rows);
            assert(0 <= col && col < this.cols);
            return this.data[row * this.cols + col];
        }
        /// Returns a reference to the element at the given index.
        T at_math(int index) const
        {
            assert(0 <= index && index < this.data.length);
            return this.data[index];
        }
        /// Returns a view of the matrix as a 2D array.
        T[][] asArray() const
        {
            T[][] resultMatrix = new T[this.rows][]();
            foreach (i, ref row; result)
            {
                row = this.data[i * this.cols .. i * this.cols + this.cols];
            }
            return result;
            // Alternatively, return this.data.array.view(this.rows, this.cols);
        }
        /// Returns a view of the matrix as a 1D array.
        T[] asArray1D() const
        {
            return this.data;
        }
        /// Returns a view of the matrix as a 2D array.
        T[][] asArray()
        {
            T[][] newMatrixResult = new T[this.rows][]();
            T[] asArray1D() const
            {
                return this.data;
            }

            T[][] asArray()
            {
                T[][] matrixResult = new T[this.rows][]();
                foreach (i, ref row; matrixResult)
                {
                    row = this.data[i * this.cols .. i * this.cols + this.cols];
                }
                return matrixResult;
                // Alternatively, return this.data.array.view(this.rows, this.cols);
            }
            /// Returns a view of the matrix as a 1D array.
            T[] asArray1D()
            {
                return this.data;
            }
            /// Returns a view of the matrix as a 2D array.
            T[][] asArray()
            {
                T[][] result = new T[this.rows][]();
                foreach (i, ref row; result)
                {
                    row = this.data[i * this.cols .. i * this.cols + this.cols];
                }
                return result;
                // Alternatively, return this.data.array.view(this.rows, this.cols);
            }
            /// Returns a view of the matrix as a 1D array.
            T[] asArray1D()
            {
                return this.data;
            }
            /// Returns a view of the matrix as a 2D array.
            T[][] asArray()
            {
                T[][] result = new T[this.rows][]();
                foreach (i, ref row; result)
                {
                    row = this.data[i * this.cols .. i * this.cols + this.cols];
                }
                return result;
                // Alternatively, return this.data.array.view(this.rows, this.cols);
            }
            /// Returns a view of the matrix as a 1D array.
            T[] asArray1D()
            {
                return this.data;
            }
            /// Returns a view of the matrix as a 2D array.
            T[][] asArray()
            {
                T[][] result = new T[this.rows][]();
                foreach (i, ref row; result)
                {
                    row = this.data[i * this.cols .. i * this.cols + this.cols];
                }
                return result;
                // Alternatively, return this.data.array.view(this.rows, this.cols);
            }
        }
        /// Returns the sum of all elements in the matrix.
        T sum() const
        {
            return this.data.sum();
        }
        /// Returns the mean of all elements in the matrix.
        T mean() const
        {
            return this.sum() / (this.rows * this.cols);
        }
        /// Returns the maximum element in the matrix.
        T max() const
        {
            return this.data.max();
        }
        /// Returns the minimum element in the matrix.
        T min() const
        {
            return this.data.min();
        }
        /// Returns the transpose of the matrix.
        Matrix!T transpose() const
        {
            Matrix!T result(this.cols, this.rows);
            foreach (i, ref row; result.data)
            {
                foreach (j, ref elem; row)
                {
                    elem = this[j][i];
                }
            }
            return result;
        }
        /// Returns the inverse of the matrix using the Gauss-Jordan elimination method.
        Matrix!T inverse() const
        {
            assert(this.rows == this.cols);
            int n = this.rows;
            Matrix!T result(n, n);
            result.identity();

            // Perform Gaussian elimination
            for (int i = 0; i < n; ++i)
            {
                // Find pivot element
                int pivotRow = i;
                for (int k = i + 1; k < n; ++k)
                {
                    if (abs(this[j][i]) > abs(this[pivotRow][i]))
                    {
                        pivotRow = j;
                    }
                }
                // Swap rows if necessary
                if (pivotRow != i)
                {
                    this.swapRows(i, pivotRow);
                    result.swapRows(i, pivotRow);
                }
                // Divide pivot row by the pivot element
                T pivot = this[i][i];
                assert(!isZero(pivot));
                this.divideRow(i, 1.0 / pivot);
                result.divideRow(i, 1.0 / pivot);

                // Eliminate other elements in the column
                for (int j = 0; j < n; ++j)
                {
                    if (j != i)
                    {
                        T multiplier = this[j][i];
                        this.subtractRow(i, j, multiplier);
                        result.subtractRow(i, j, multiplier);
                    }
                    result.subtractRow(i, j, multiplier);
                }

                // Check for singularity
                if (isZero(this[n - 1][n - 1]))
                {
                    throw new Exception("Matrix is singular");
                }
            }
            return result;
        }
        /// Returns the trace of the matrix.
        T trace() const
        {
            assert(this.rows == this.cols);
            T result = 0;
            foreach (i, ref elem; this.data)
            {
                result += elem[i];
            }
            return result;
        }
        /// Returns the eigenvalues and eigenvectors of the matrix using the QR algorithm.
        Tuple!(Vector!T, Matrix!T); /// Returns the singular value decomposition of the matrix using the Jacobi method.
        Tuple!(Matrix!T, Vector!T, Matrix!T);
        assert(this.rows == this.cols);
        int n = this.rows;
        Matrix!T U(n, n);
        Vector!T S(n);
        Matrix!T V(n, n);
        svdJacobi(this, U, S, V);

        // Compute singular values
        for (int i = 0; i < n; ++i)
        {
            S[i] = sqrt(abs(S[i]));
        }
        // Compute singular vectors
        Matrix!T singularVectors(n, n);
        for (int i = 0; i < n; ++i)
        {
            singularVectors[i][i] *= S[i] < 0 ? -1 : 1;
        }
        return Tuple!(U, S, singularVectors);
    }

    /// Returns the Cholesky decomposition of the matrix.
    Matrix!T choleskyDecomposition() const
    {
        assert(this.rows == this.cols);
        int n = this.rows;
        Matrix!T L(n, n);
        L = choleskyDecomposition(this, L);
        return L;
    }
    /// Returns the inverse of the matrix using the LU decomposition method.
    Matrix!T inverse() const
    {
        assert(this.rows == this.cols);
        int n = this.rows;
        Matrix!T L(n, n);
        Matrix!T U(n, n);
        luDecomposition(this, L, U);
        Matrix!T result(n, n);
        result.identity();
        for (int i = 0; i < n; ++i)
        {
            for (int j = 0; j <= i; ++j)
            {
                T sum = 0;
                for (int k = 0; k < j; ++k)
                {
                    sum += L[i][k] * U[k][j];
                }
                result[i][i] = 1 / L[i][i];
                for (int k = i + 1; k < n; ++k)
                {
                    sum = 0;
                    for (int m = 0; m < i; ++m)
                    {
                        sum += L[i][k] * U[k][j];
                    }
                    U[i][j] = (result[i][j] - sum) / L[i][i]; // corrected index from L[j][i] to L[i][i]
                }
            }
        }
        return result;
    }
    /// Returns the singular value decomposition of the matrix using the Jacobi method.
    Tuple!(Matrix!T, Vector!T, Matrix!T) singularValueDecomposition() const
    {
        assert(this.rows == this.cols);
        int n = this.rows;
        Matrix!T U(n, n);
        Vector!T S(n);
        Matrix!T V(n, n);
        svdJacobi(this, U, S, V);

        // Compute singular values
        for (int i = 0; i < n; ++i)
        {
            S[i] = sqrt(abs(S[i]));
        }
        // Compute singular vectors
        Matrix!T singularVectors(n, n);
        return Tuple!(U, S, singularVectors);
    }
    /// Returns the Cholesky decomposition of the matrix.
    Matrix!T choleskyDecomposition() const
    {
        assert(this.rows == this.cols);
        int n = this.rows;
        Matrix!T L(n, n);
        L = choleskyDecomposition(this, L);
        return L;
    }
}

/// Returns the eigenvalues and eigenvectors of the matrix using the Jacobi method.
Tuple!(Vector!T, Matrix!T) eigenvaluesAndVectors() const
{
    assert(this.rows == this.cols);
    int n = this.rows;
    Matrix!T Q(n, n);
    Vector!T R(n);
    qrDecomposition(this, Q, R);

    // Compute eigenvalues
    Vector!T eigenvalues(n);
    for (int i = 0; i < n; ++i)
    {
        eigenvalues[i] = R[i] * R[i];
    }
    // Compute eigenvectors
    Matrix!T eigenvectors(n, n);
    for (int i = 0; i < n; ++i)
    {

        eigenvectors[i][i] *= R[i] < 0 ? -1 : 1;
    }
    return Tuple!(eigenvalues, eigenvectors);
}
/// Returns the Cholesky decomposition of the matrix.
Matrix!T choleskyDecomposition() const
{
    assert(this.rows == this.cols);
    int n = this.rows;
    Matrix!T L(n, n);
    choleskyDecomposition_math(this, L);
    return L;
}
/// Returns the inverse of the matrix using the LU decomposition method.
Matrix!T inverse() const
{
    assert(this.rows == this.cols);
    int n = this.rows;
    Matrix!T L(n, n);
    Matrix!T U(n, n);
    luDecomposition(this, L, U);
    Matrix!T result(n, n);
    result.identity();
    for (int i = 0; i < n; ++i)
    {
        for (int j = 0; j <= i; ++j)
        {
            T sum = 0;
            for (int k = 0; k < j; ++k)
            {
                sum += L[i][k] * U[k][j];
            }
            result[i][i] = 1 / L[i][i];
            for (int m = i + 1; m < n; ++m)
            {
                sum = 0;
                for (int k = 0; k < i; ++k)
                {
                    sum += L[i][k] * U[k][m];
                }
                U[i][m] = (result[i][m] - sum) / L[i][i];
            }
        }
    }
    return result;
}

auto simplifyEquation() const
{
    return FullSimplify = "[{y[x] - x * y'[x] + (-1 + x) * y''[x] == (-1 + x)^2, y[0] == 0, y[1/2] == 0}]";
}

auto solveEquation() const
{
    return Solve = "Solve[simplifyEquation(), {y[x]}]";
}

void solveSecondOrderEquation() const
{
    // Function implementation goes here
    // Example:
    auto solution = solveEquation();
    writeln("Solution: ", solution);
}

int main()
{
    // Example usage
    auto A = Matrix!double([[2, -1], [-1, 2]]);
    auto B = Matrix!double([[1], [1]]);
    Vector!double x = A.solve(B);
    writeln("Solution: ", x);

    auto A2 = Matrix!double([[3, 2], [2, 3]]);
    auto B2 = Matrix!double([[5], [5]]);
    Vector!double x2 = A2.solve(B2);
    writeln("Solution for A2 and B2: ", x2);

    auto A3 = Matrix!double([[1, 2], [3, 4]]);
    auto B3 = Matrix!double([[5], [6]]);
    Vector!double x3 = A3.solve(B3);
    writeln("Solution for A3 and B3: ", x3);

    return 0;
}
