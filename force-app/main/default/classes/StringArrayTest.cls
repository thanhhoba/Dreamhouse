public with sharing class StringArrayTest {
  public static List<String> generateStringArray(Integer numStrings) {
    List<String> newStringList = new List<String>();

    for (Integer i = 0; i < numStrings; i++) {
      newStringList.add('Test ' + i);
    }

    System.debug(newStringList);

    return newStringList;
  }
}
