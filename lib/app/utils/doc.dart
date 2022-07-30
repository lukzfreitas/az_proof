class Doc {
  static String convertDoc(String value) {
    if (value.length == 11) {
      return _formatCPF(value);
    }
    if (value.length == 14) {
      return _formatCNPJ(value);
    }
    return "Documento não informado";    
  }

  static String _formatCPF(String value) {
    return '${value.substring(0, 3)}.${value.substring(3, 6)}.${value.substring(6, 9)}-${value.substring(9, 11)}';
  }

  static String _formatCNPJ(String value) {
    return '${value.substring(0, 2)}.${value.substring(2, 5)}.${value.substring(5, 8)}/${value.substring(8, 12)}-${value.substring(12, 14)}';
  }
}
