class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    List<int> arr3 = [];
    for (int i = 0; i < arr2.length; i++) {
      for (int j = 0; j < arr1.length; j++) {
        if (arr2[i] == arr1[j]) {
          arr3.add(arr2[i]);
        }
      }
      arr1.removeWhere((item) => item == arr2[i]);
    }
    arr3.addAll(arr1);
    return arr3;
  }
}

void main() {
  var arr1 = [28, 6, 22, 8, 44, 17], arr2 = [22, 28, 8, 6];
  var Output = [22, 28, 8, 6, 17, 44];
  Output = Output;
  print(Solution().relativeSortArray(arr1, arr2));
}
