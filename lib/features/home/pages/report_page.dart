import 'package:ecpf/core/users/models/users_model.dart';
import 'package:ecpf/core/users/users.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  // Dados de exemplo (Substituir por dados reais)
  final List<User> users = Users().users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Relatório Gerencial'),
      ),
      body: SingleChildScrollView(
        // Adiciona SingleChildScrollView para tornar a tela scrollável
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título
              const Text(
                'Frequência de Usuários',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              // Data do Relatório
              Text(
                'Período: ${DateFormat('dd/MM/yyyy').format(DateTime.now().subtract(const Duration(days: 30)))} - ${DateFormat('dd/MM/yyyy').format(DateTime.now())}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              // Gráfico de Barras
              SizedBox(
                height: 300, // Define uma altura para o gráfico
                child: SfCartesianChart(
                  title: ChartTitle(
                    text: 'Frequência de Acesso',
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  primaryXAxis: CategoryAxis(),
                  series: <CartesianSeries<User, String>>[
                    BarSeries<User, String>(
                      dataSource: users,
                      xValueMapper: (User data, _) => data.name,
                      yValueMapper: (User data, _) => 1, // Simula frequência
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Tabela Detalhada
              DataTable(
                columns: const [
                  DataColumn(label: Text('Nome')),
                  DataColumn(label: Text('CPF')),
                  DataColumn(label: Text('Sexo')),
                  DataColumn(label: Text('Nascimento')),
                  DataColumn(label: Text('Endereço')),
                  DataColumn(label: Text('Medicamento')),
                  DataColumn(label: Text('Dosagem')),
                ],
                rows: users.map((user) {
                  return DataRow(
                    cells: [
                      DataCell(Text(user.name)),
                      DataCell(Text(user.document)),
                      DataCell(Text(user.gender)),
                      DataCell(Text(DateFormat('dd/MM/yyyy').format(user.birthdate))),
                      DataCell(Text(user.address)),
                      DataCell(Text(user.medication.name)),
                      DataCell(Text(user.medication.dosage)),
                    ],
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              // Botão para Exportar PDF
              Center(
                child: ElevatedButton(
                  onPressed: () => _createPdfReport(),
                  child: const Text('Exportar Relatório (PDF)'),
                ),
              ),
              const SizedBox(height: 20), // Adiciona espaçamento embaixo do botão
            ],
          ),
        ),
      ),
    );
  }

  // Cria o relatório em PDF
  Future<void> _createPdfReport() async {
    final pdf = pw.Document();

    // Adiciona o conteúdo do relatório ao PDF
    pdf.addPage(pw.Page(
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('Relatório Gerencial', style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            pw.Text(
                'Período: ${DateFormat('dd/MM/yyyy').format(DateTime.now().subtract(const Duration(days: 30)))} - ${DateFormat('dd/MM/yyyy').format(DateTime.now())}'),
            pw.SizedBox(height: 20),
            // Tabela Detalhada em PDF
            pw.Table(
              border: pw.TableBorder.all(),
              defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle, // Centraliza o texto verticalmente nas células
              children: [
                pw.TableRow(
                  children: [
                    pw.Text('Nome', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('CPF', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('Sexo', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('Nascimento', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('Endereço', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('Medicamento', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('Dosagem', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                  ],
                ),
                for (final user in users)
                  pw.TableRow(
                    children: [
                      pw.Text(user.name),
                      pw.Text(user.document),
                      pw.Text(user.gender),
                      pw.Text(DateFormat('dd/MM/yyyy').format(user.birthdate)),
                      pw.Text(user.address),
                      pw.Text(user.medication.name),
                      pw.Text(user.medication.dosage),
                    ],
                  )
              ],
            ),
          ],
        );
      },
    ));

    // Exibe o PDF para o usuário
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) => pdf.save(),
    );
  }
}

class FrequencyData {
  final String name;
  final int frequency;
  final DateTime startDate;
  final DateTime endDate;

  FrequencyData(this.name, this.frequency, this.startDate, this.endDate);
}
