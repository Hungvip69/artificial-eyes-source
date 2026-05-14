package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import gnu.lists.LList;
import gnu.lists.Pair;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.ToIntFunction;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class YailMatrix {
    private final double[] data;
    private final int[] dims;

    public YailMatrix(int[] dims, double fillValue) {
        this.dims = dims;
        int totalSize = 1;
        for (int d : dims) {
            if (d < 1) {
                throw new YailRuntimeError("Invalid dimension size: " + d, "Matrix Error");
            }
            totalSize *= d;
        }
        this.data = new double[totalSize];
        Arrays.fill(this.data, fillValue);
    }

    public YailMatrix(int[] dims, double[] dataValues) {
        this.dims = dims;
        int totalSize = 1;
        for (int d : dims) {
            if (d < 1) {
                throw new YailRuntimeError("Invalid dimension size: " + d, "Matrix Error");
            }
            totalSize *= d;
        }
        if (dataValues.length != totalSize) {
            throw new YailRuntimeError("Data length invalid: expected " + totalSize + " but got " + dataValues.length, "Matrix Error");
        }
        this.data = dataValues;
    }

    public YailMatrix(int rows, int cols, double[][] matrixData) {
        this(new int[]{rows, cols}, flatten2D(rows, cols, matrixData));
    }

    private static double[] flatten2D(int rows, int cols, double[][] matrixData) {
        if (matrixData.length != rows) {
            throw new YailRuntimeError("Matrix dimensions mismatch: expected " + rows + " rows but got " + matrixData.length, "Matrix Error");
        }
        double[] flat = new double[rows * cols];
        for (int i = 0; i < rows; i++) {
            if (matrixData[i].length != cols) {
                throw new YailRuntimeError("Matrix dimensions mismatch: row " + (i + 1) + " has " + matrixData[i].length + " columns, expected " + cols, "Matrix Error");
            }
            for (int j = 0; j < cols; j++) {
                flat[(i * cols) + j] = matrixData[i][j];
            }
        }
        return flat;
    }

    private int getFlatIndex(int... indices) {
        if (indices.length != this.dims.length) {
            throw new YailRuntimeError("Expected " + this.dims.length + " indices but got " + indices.length, "Matrix Error");
        }
        int offset = 0;
        int multiplier = 1;
        for (int i = this.dims.length - 1; i >= 0; i--) {
            int idx = indices[i];
            if (idx < 1 || idx > this.dims[i]) {
                throw new YailRuntimeError("Index out of bounds for dimension " + (i + 1) + ": " + idx, "Matrix Access Error");
            }
            offset += (idx - 1) * multiplier;
            multiplier *= this.dims[i];
        }
        return offset;
    }

    public static YailMatrix makeMatrix(Object... dataValues) {
        List<Object> argsList = new ArrayList<>();
        Object elt = dataValues[0];
        while (elt != LList.Empty) {
            if (!(elt instanceof Pair)) {
                throw new YailRuntimeError("Invalid matrix data: " + elt, "Matrix Error");
            }
            Pair pair = (Pair) elt;
            argsList.add(pair.getCar());
            elt = pair.getCdr();
        }
        Object[] args = argsList.toArray();
        int rows = ((Number) args[0]).intValue();
        int cols = ((Number) args[1]).intValue();
        double[][] matrixData = (double[][]) Array.newInstance((Class<?>) Double.TYPE, rows, cols);
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                matrixData[i][j] = ((Number) args[(i * cols) + 2 + j]).doubleValue();
            }
        }
        return new YailMatrix(rows, cols, matrixData);
    }

    public static YailMatrix makeMultidimMatrix(Object dimsObj, Object initObj) {
        List<Object> rawDims = new ArrayList<>();
        if (dimsObj instanceof List) {
            rawDims.addAll((List) dimsObj);
        } else if (dimsObj instanceof LList) {
            Object elt = dimsObj;
            while (elt != LList.Empty) {
                Pair p = (Pair) elt;
                rawDims.add(p.getCar());
                elt = p.getCdr();
            }
        } else {
            throw new YailRuntimeError("Invalid dims list", "Matrix Error");
        }
        int[] dims = new int[rawDims.size()];
        for (int i = 0; i < rawDims.size(); i++) {
            Object d = rawDims.get(i);
            if (!(d instanceof Number)) {
                throw new YailRuntimeError("Dimension not a number: " + d, "Matrix Error");
            }
            dims[i] = ((Number) d).intValue();
            if (dims[i] < 1) {
                throw new YailRuntimeError("Invalid dimension size: " + dims[i], "Matrix Error");
            }
        }
        double initValue = ((Number) initObj).doubleValue();
        return new YailMatrix(dims, initValue);
    }

    public double getCell(Object... rawIndices) {
        int[] indices = new int[rawIndices.length];
        for (int i = 0; i < rawIndices.length; i++) {
            Object o = rawIndices[i];
            if (!(o instanceof Number)) {
                throw new YailRuntimeError("Index not a number: " + o, "Matrix Access Error");
            }
            indices[i] = ((Number) o).intValue();
        }
        return this.data[getFlatIndex(indices)];
    }

    public void setCell(Object valueObj, Object... rawIndices) {
        double value = ((Number) valueObj).doubleValue();
        int[] indices = new int[rawIndices.length];
        for (int i = 0; i < rawIndices.length; i++) {
            Object o = rawIndices[i];
            if (!(o instanceof Number)) {
                throw new YailRuntimeError("Index not a number: " + o, "Matrix Access Error");
            }
            indices[i] = ((Number) o).intValue();
        }
        this.data[getFlatIndex(indices)] = value;
    }

    public LList getRow(int row) {
        if (this.dims.length != 2) {
            throw new YailRuntimeError("getRow only valid on 2D matrices", "Matrix Error");
        }
        int cols = this.dims[1];
        double[] rowArr = new double[cols];
        for (int j = 0; j < cols; j++) {
            rowArr[j] = getCell(Integer.valueOf(row), Integer.valueOf(j + 1));
        }
        return arrayToLList(rowArr);
    }

    public LList getColumn(int col) {
        if (this.dims.length != 2) {
            throw new YailRuntimeError("getColumn only valid on 2D matrices", "Matrix Error");
        }
        int rows = this.dims[0];
        double[] colArr = new double[rows];
        for (int i = 0; i < rows; i++) {
            colArr[i] = getCell(Integer.valueOf(i + 1), Integer.valueOf(col));
        }
        return arrayToLList(colArr);
    }

    public List<Integer> getDimensions() {
        List<Integer> dimList = new ArrayList<>();
        for (int d : this.dims) {
            dimList.add(Integer.valueOf(d));
        }
        return dimList;
    }

    private LList arrayToLList(double[] array) {
        Object[] newArray = new Object[array.length];
        for (int i = 0; i < array.length; i++) {
            newArray[i] = Double.valueOf(array[i]);
        }
        return LList.makeList(newArray, 0);
    }

    public static YailMatrix transpose(YailMatrix m) {
        if (m.dims.length != 2) {
            throw new YailRuntimeError("transpose only valid on 2D matrices", "Matrix Error");
        }
        int r = m.dims[0];
        int c = m.dims[1];
        int[] newDims = {c, r};
        double[] result = new double[r * c];
        for (int i = 1; i <= r; i++) {
            for (int j = 1; j <= c; j++) {
                result[((j - 1) * r) + (i - 1)] = m.getCell(Integer.valueOf(i), Integer.valueOf(j));
            }
        }
        return new YailMatrix(newDims, result);
    }

    public static YailMatrix inverse(YailMatrix m) {
        double d;
        if (m.dims.length != 2 || m.dims[0] != m.dims[1]) {
            throw new YailRuntimeError("Matrix must be square for inversion", "Matrix Error");
        }
        int n = m.dims[0];
        double[][] aug = (double[][]) Array.newInstance((Class<?>) Double.TYPE, n, n * 2);
        int i = 0;
        while (true) {
            d = 0.0d;
            if (i >= n) {
                break;
            }
            for (int j = 0; j < n; j++) {
                aug[i][j] = m.data[(i * n) + j];
            }
            for (int j2 = n; j2 < n * 2; j2++) {
                aug[i][j2] = i == j2 - n ? 1.0d : 0.0d;
            }
            i++;
        }
        int i2 = 0;
        while (i2 < n) {
            double diag = aug[i2][i2];
            if (diag == d) {
                throw new YailRuntimeError("Matrix is not invertible", "Matrix Error");
            }
            for (int j3 = 0; j3 < n * 2; j3++) {
                double[] dArr = aug[i2];
                dArr[j3] = dArr[j3] / diag;
            }
            for (int k = 0; k < n; k++) {
                if (k != i2) {
                    double factor = aug[k][i2];
                    for (int j4 = 0; j4 < n * 2; j4++) {
                        double[] dArr2 = aug[k];
                        dArr2[j4] = dArr2[j4] - (aug[i2][j4] * factor);
                    }
                }
            }
            i2++;
            d = 0.0d;
        }
        double[][] invData = (double[][]) Array.newInstance((Class<?>) Double.TYPE, n, n);
        for (int i3 = 0; i3 < n; i3++) {
            System.arraycopy(aug[i3], n, invData[i3], 0, n);
        }
        return new YailMatrix(n, n, invData);
    }

    public static YailMatrix rotateLeft(YailMatrix m) {
        if (m.dims.length != 2) {
            throw new YailRuntimeError("rotateLeft only valid for 2D matrices", "Matrix Error");
        }
        int rows = m.dims[0];
        int cols = m.dims[1];
        double[][] result = (double[][]) Array.newInstance((Class<?>) Double.TYPE, cols, rows);
        for (int i = 1; i <= cols; i++) {
            for (int j = 1; j <= rows; j++) {
                result[i - 1][j - 1] = m.getCell(Integer.valueOf(j), Integer.valueOf((cols - i) + 1));
            }
        }
        return new YailMatrix(cols, rows, result);
    }

    public static YailMatrix rotateRight(YailMatrix m) {
        if (m.dims.length != 2) {
            throw new YailRuntimeError("rotateRight only valid for 2D matrices", "Matrix Error");
        }
        int rows = m.dims[0];
        int cols = m.dims[1];
        double[][] result = (double[][]) Array.newInstance((Class<?>) Double.TYPE, cols, rows);
        for (int i = 1; i <= cols; i++) {
            for (int j = 1; j <= rows; j++) {
                result[i - 1][j - 1] = m.getCell(Integer.valueOf((rows - j) + 1), Integer.valueOf(i));
            }
        }
        return new YailMatrix(cols, rows, result);
    }

    public static YailMatrix add(Object... args) {
        if (args.length == 1) {
            List<Object> flat = new ArrayList<>();
            Object elt = args[0];
            while (elt != LList.Empty) {
                if (!(elt instanceof Pair)) {
                    throw new YailRuntimeError("yail-matrix-add: expected list of matrices", "Matrix Error");
                }
                Pair p = (Pair) elt;
                flat.add(p.getCar());
                elt = p.getCdr();
            }
            args = flat.toArray();
        }
        YailMatrix sum = (YailMatrix) args[0];
        for (int i = 1; i < args.length; i++) {
            Object o = args[i];
            if (!(o instanceof YailMatrix)) {
                throw new YailRuntimeError("yail-matrix-add argument " + (i + 1) + " is not a matrix: " + o, "Matrix Error");
            }
            sum = add(sum, (YailMatrix) o);
        }
        return sum;
    }

    public static YailMatrix add(YailMatrix a, YailMatrix b) {
        if (!Arrays.equals(a.dims, b.dims)) {
            throw new YailRuntimeError("Dimensions must match for addition", "Matrix Error");
        }
        double[] result = new double[a.data.length];
        for (int i = 0; i < result.length; i++) {
            result[i] = a.data[i] + b.data[i];
        }
        return new YailMatrix(a.dims, result);
    }

    public static YailMatrix subtract(YailMatrix a, YailMatrix b) {
        if (!Arrays.equals(a.dims, b.dims)) {
            throw new YailRuntimeError("Dimensions must match for subtraction", "Matrix Error");
        }
        double[] result = new double[a.data.length];
        for (int i = 0; i < result.length; i++) {
            result[i] = a.data[i] - b.data[i];
        }
        return new YailMatrix(a.dims, result);
    }

    public static YailMatrix multiply(Object... args) {
        if (args.length == 1 && (args[0] instanceof LList)) {
            List<Object> flat = new ArrayList<>();
            Object elt = args[0];
            while (elt != LList.Empty) {
                Pair p = (Pair) elt;
                flat.add(p.getCar());
                elt = p.getCdr();
            }
            args = flat.toArray();
        }
        YailMatrix product = (YailMatrix) args[0];
        for (int i = 1; i < args.length; i++) {
            product = multiply(product, args[i]);
        }
        return product;
    }

    public static YailMatrix multiply(YailMatrix a, Object other) {
        YailMatrix yailMatrix = a;
        if (other instanceof Number) {
            double s = ((Number) other).doubleValue();
            return scalarMultiply(yailMatrix, s);
        }
        if (other instanceof YailMatrix) {
            YailMatrix b = (YailMatrix) other;
            if (yailMatrix.dims.length != 2 || b.dims.length != 2) {
                throw new YailRuntimeError("Both operands must be 2-D matrices", "Matrix Error");
            }
            int aRows = yailMatrix.dims[0];
            int aCols = yailMatrix.dims[1];
            int bRows = b.dims[0];
            int bCols = b.dims[1];
            if (aCols != bRows) {
                throw new YailRuntimeError("Inner dimensions must match for multiplication: " + aCols + " ≠ " + bRows, "Matrix Error");
            }
            int[] outDims = {aRows, bCols};
            double[] out = new double[aRows * bCols];
            int i = 1;
            while (i <= aRows) {
                int j = 1;
                while (j <= bCols) {
                    double sum = 0.0d;
                    int k = 1;
                    while (k <= aCols) {
                        sum += yailMatrix.getCell(Integer.valueOf(i), Integer.valueOf(k)) * b.getCell(Integer.valueOf(k), Integer.valueOf(j));
                        k++;
                        yailMatrix = a;
                        aRows = aRows;
                    }
                    out[((i - 1) * bCols) + (j - 1)] = sum;
                    j++;
                    yailMatrix = a;
                    aRows = aRows;
                }
                i++;
                yailMatrix = a;
            }
            return new YailMatrix(outDims, out);
        }
        throw new YailRuntimeError("Cannot multiply matrix by " + other, "Matrix Error");
    }

    public static YailMatrix scalarMultiply(YailMatrix m, double s) {
        double[] result = new double[m.data.length];
        for (int i = 0; i < result.length; i++) {
            result[i] = m.data[i] * s;
        }
        return new YailMatrix(m.dims, result);
    }

    public static YailMatrix power(YailMatrix m, int exp) {
        if (m.dims.length != 2 || m.dims[0] != m.dims[1]) {
            throw new YailRuntimeError("power only valid on square 2D", "Matrix Error");
        }
        int n = m.dims[0];
        YailMatrix result = identityMatrix(n);
        for (int i = 0; i < exp; i++) {
            result = multiply(result, m);
        }
        return result;
    }

    private static YailMatrix identityMatrix(int n) {
        int[] idDims = {n, n};
        double[] diag = new double[n * n];
        for (int i = 0; i < n; i++) {
            diag[(i * n) + i] = 1.0d;
        }
        return new YailMatrix(idDims, diag);
    }

    public static YailList matrixToAlist(YailMatrix m) {
        return toYailList(m, 0, new int[0]);
    }

    private static YailList toYailList(YailMatrix m, int depth, int[] prefix) {
        int size = m.dims[depth];
        List<Object> bucket = new ArrayList<>(size);
        for (int i = 1; i <= size; i++) {
            int[] next = Arrays.copyOf(prefix, prefix.length + 1);
            next[prefix.length] = i;
            if (depth == m.dims.length - 1) {
                bucket.add(Double.valueOf(m.data[m.getFlatIndex(next)]));
            } else {
                bucket.add(toYailList(m, depth + 1, next));
            }
        }
        return YailList.makeList((List) bucket);
    }

    public static boolean matrixEqual(YailMatrix a, YailMatrix b) {
        return Arrays.equals(a.dims, b.dims) && Arrays.equals(a.data, b.data);
    }

    public String toJSONString() {
        try {
            YailList asList = matrixToAlist(this);
            return JsonUtil.getJsonRepresentation(asList);
        } catch (JSONException e) {
            throw new YailRuntimeError("Matrix failed to convert to JSON.", "JSON Creation Error.");
        }
    }

    public static YailMatrix fromJsonArray(JSONArray arr) throws JSONException {
        List<Integer> dimsList = new ArrayList<>();
        if (!detectDims(arr, dimsList)) {
            throw new JSONException("Not a uniform numeric array");
        }
        int[] dims = dimsList.stream().mapToInt(new ToIntFunction() { // from class: com.google.appinventor.components.runtime.util.YailMatrix$$ExternalSyntheticLambda0
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        }).toArray();
        int totalSize = 1;
        for (int d : dims) {
            totalSize *= d;
        }
        double[] flat = new double[totalSize];
        flatten(arr, dimsList, 0, flat, new int[]{0});
        return new YailMatrix(dims, flat);
    }

    private static boolean detectDims(JSONArray arr, List<Integer> dims) throws JSONException {
        dims.add(Integer.valueOf(arr.length()));
        if (arr.length() == 0) {
            return true;
        }
        Object first = arr.get(0);
        if (first instanceof JSONArray) {
            int len = ((JSONArray) first).length();
            for (int i = 1; i < arr.length(); i++) {
                Object o = arr.get(i);
                if (!(o instanceof JSONArray) || ((JSONArray) o).length() != len) {
                    return false;
                }
            }
            return detectDims((JSONArray) first, dims);
        }
        for (int i2 = 0; i2 < arr.length(); i2++) {
            if (!(arr.get(i2) instanceof Number)) {
                return false;
            }
        }
        return true;
    }

    private static void flatten(JSONArray arr, List<Integer> dims, int depth, double[] flat, int[] writeIndex) throws JSONException {
        if (depth == dims.size() - 1) {
            for (int i = 0; i < arr.length(); i++) {
                int i2 = writeIndex[0];
                writeIndex[0] = i2 + 1;
                flat[i2] = ((Number) arr.get(i)).doubleValue();
            }
            return;
        }
        for (int i3 = 0; i3 < arr.length(); i3++) {
            flatten(arr.getJSONArray(i3), dims, depth + 1, flat, writeIndex);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[\n");
        for (int i = 1; i <= this.dims[0]; i++) {
            sb.append("  ").append(buildString(1, new int[]{i}));
            if (i < this.dims[0]) {
                sb.append(",\n");
            }
        }
        sb.append("\n]");
        return sb.toString();
    }

    private String buildString(int depth, int[] prefix) {
        if (depth == this.dims.length) {
            return Double.toString(this.data[getFlatIndex(prefix)]);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i = 1; i <= this.dims[depth]; i++) {
            if (i > 1) {
                sb.append(", ");
            }
            int[] next = Arrays.copyOf(prefix, prefix.length + 1);
            next[prefix.length] = i;
            sb.append(buildString(depth + 1, next));
        }
        sb.append("]");
        return sb.toString();
    }
}
