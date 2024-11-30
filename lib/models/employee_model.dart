class EmployeeList{
  final String fullname;
  final String image;
  final String states;
  final String jointdate;
  final String designation;
  final String phone;
  final String email;

EmployeeList(
  this.fullname,
  this.image,
  this.states,
  this.jointdate,
  this.designation,
  this.phone,
  this.email
);
}

List employees = [
  EmployeeList("M.A.C Perera", "https://cdn.pixabay.com/photo/2023/06/10/07/18/business-8053376_1280.jpg", "Active", "01/01/2012", "Manager", "+94 718007645", "maj@gmail.com"),
  EmployeeList("A.K.L Silva", "https://cdn.pixabay.com/photo/2023/06/10/18/09/business-8054608_1280.jpg", "Active", "01/02/2011", "Accountan", "+94 456007645", "qwe@gmail.com"),
  EmployeeList("K.N.M Peiris", "https://cdn.pixabay.com/photo/2024/02/21/14/53/ai-generated-8587845_1280.png", "Inactive", "02/03/2015", "Developer", "+94 679007645", "rfv@gmail.com"),
  EmployeeList("L.V.W Fernando", "https://cdn.pixabay.com/photo/2023/06/10/07/18/business-8053374_1280.jpg", "Active", "01/03/2022", "Admin", "+94 718007342", "tgb@gmail.com"),
  EmployeeList("M.A.C Perera", "https://cdn.pixabay.com/photo/2023/06/10/07/18/business-8053376_1280.jpg", "Active", "01/01/2012", "Manager", "+94 718007645", "maj@gmail.com"),
  EmployeeList("A.K.L Silva", "https://cdn.pixabay.com/photo/2023/06/10/18/09/business-8054608_1280.jpg", "Active", "01/02/2011", "Accountan", "+94 456007645", "qwe@gmail.com"),
  EmployeeList("K.N.M Peiris", "https://cdn.pixabay.com/photo/2024/02/21/14/53/ai-generated-8587845_1280.png", "Inactive", "02/03/2015", "Developer", "+94 679007645", "rfv@gmail.com"),
  EmployeeList("L.V.W Fernando", "https://cdn.pixabay.com/photo/2023/06/10/07/18/business-8053374_1280.jpg", "Active", "01/03/2022", "Admin", "+94 718007342", "tgb@gmail.com")
];
