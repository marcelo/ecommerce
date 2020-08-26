package araujo.santos.marcelo.ecommerce;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
class DatabaseLayer {

	@Autowired
	private JdbcTemplate jtm;

	protected int[] batchInsert(List<Produto> produtos) {

		return jtm.batchUpdate(
				"insert into ecommerce.produtos(nome, url, "
						+ "categoria, peso, cor, classificacao, preco, desconto) values(?,?,?,?,?,?,?,?)",
				new BatchPreparedStatementSetter() {

					public void setValues(PreparedStatement ps, int i) throws SQLException {
						ps.setString(1, produtos.get(i).getNome() != null ? produtos.get(i).getNome() : "");
						ps.setString(2, produtos.get(i).getUrl() != null ? produtos.get(i).getUrl() : "");
						ps.setString(3, produtos.get(i).getCategoria() != null ? produtos.get(i).getCategoria() : "");
						ps.setString(4, produtos.get(i).getPeso() != null ? produtos.get(i).getPeso() : "");
						ps.setString(5, produtos.get(i).getCor() != null ? produtos.get(i).getCor() : "");
						ps.setString(6,
								produtos.get(i).getClassificacao() != null
										? produtos.get(i).getClassificacao().replace("de 5 estrelas", "").trim()
										: "");

						ps.setDouble(7, produtos.get(i).getPreco() != null ? Double.parseDouble(
								produtos.get(i).getPreco().replace(".", "").replace(",", ".").toString()) : 0);

						ps.setString(8, produtos.get(i).getDesconto() != null ? produtos.get(i).getDesconto() : "-");

					}

					public int getBatchSize() {
						return produtos.size();
					}

				});
	}

	public void truncateTableProdutos() {

		try {

			jtm.update("truncate table ecommerce.produtos");

		} catch (Exception ex) {

			System.err.println("Error  @flush_tab " + ex);
		}
	}

	protected void getMenorPreco() {

		String sql = "SELECT * FROM produtos where preco <> 0 order by preco asc limit 3";

		List<Map<String, Object>> rows = (List<Map<String, Object>>) jtm.queryForList(sql);

		rows.forEach(System.out::println);


	}

	protected void getMelhoresClassificados() {

		String sql = "SELECT * FROM produtos WHERE classificacao = '5,0' and preco <> 0 order by preco asc";

		List<Map<String, Object>> rows = (List<Map<String, Object>>) jtm.queryForList(sql);

		rows.forEach(System.out::println);

	}
}
