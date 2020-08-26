package araujo.santos.marcelo.ecommerce;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Scanner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.util.StringUtils;

import com.gargoylesoftware.css.parser.CSSErrorHandler;
import com.gargoylesoftware.css.parser.CSSException;
import com.gargoylesoftware.css.parser.CSSParseException;
import com.gargoylesoftware.htmlunit.AjaxController;
import com.gargoylesoftware.htmlunit.FailingHttpStatusCodeException;
import com.gargoylesoftware.htmlunit.NicelyResynchronizingAjaxController;
import com.gargoylesoftware.htmlunit.ScriptException;
import com.gargoylesoftware.htmlunit.ScriptResult;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.WebRequest;
import com.gargoylesoftware.htmlunit.html.DomElement;
import com.gargoylesoftware.htmlunit.html.HtmlAnchor;
import com.gargoylesoftware.htmlunit.html.HtmlButtonInput;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlForm;
import com.gargoylesoftware.htmlunit.html.HtmlInput;
import com.gargoylesoftware.htmlunit.html.HtmlOption;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.gargoylesoftware.htmlunit.html.HtmlSelect;
import com.gargoylesoftware.htmlunit.html.HtmlSubmitInput;
import com.gargoylesoftware.htmlunit.html.HtmlTextInput;
import com.gargoylesoftware.htmlunit.html.parser.HTMLParserListener;
import com.gargoylesoftware.htmlunit.javascript.JavaScriptErrorListener;
import com.gargoylesoftware.htmlunit.javascript.background.JavaScriptJobManager;

@SpringBootApplication
public class EcommerceApplication implements CommandLineRunner {

	private String text;
	private List<Produto> produtos = new ArrayList<Produto>();

	@Autowired
	private DatabaseLayer dbLayer;

	private static WebClient webClient;
	private static final String URL = "http://amazon.com.br";

	public static void main(String[] args) throws Exception {

		SpringApplication app = new SpringApplication(EcommerceApplication.class);
		Properties properties = new Properties();
		properties.setProperty("spring.main.banner-mode", "off");
		properties.setProperty("logging.pattern.console", "");
		app.setDefaultProperties(properties);
		app.setBannerMode(Banner.Mode.OFF);
		app.run(args);
	}

	@Override
	public void run(String... args) throws Exception {

		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		System.out.print("Informe o produto para pesquisa: ");

		this.text = "";
		this.text += scanner.nextLine();

		scanner.close();

		this.gatherData(URL, this.text);

	}

	private static WebClient singleton() {

		if (EcommerceApplication.webClient == null) {
			EcommerceApplication.webClient = new WebClient();

			EcommerceApplication.webClient.getOptions().setJavaScriptEnabled(false);
			EcommerceApplication.webClient.getOptions().setActiveXNative(false);
			EcommerceApplication.webClient.getOptions().setCssEnabled(false);
			EcommerceApplication.webClient.getOptions().setPrintContentOnFailingStatusCode(false);
			EcommerceApplication.webClient.getOptions().setThrowExceptionOnScriptError(false);
			EcommerceApplication.webClient.getOptions().setThrowExceptionOnFailingStatusCode(false);

			EcommerceApplication.webClient.setCssErrorHandler(new CSSErrorHandler() {

				@Override
				public void warning(CSSParseException exception) throws CSSException {
					// TODO Auto-generated method stub

				}

				@Override
				public void error(CSSParseException exception) throws CSSException {
					// TODO Auto-generated method stub

				}

				@Override
				public void fatalError(CSSParseException exception) throws CSSException {
					// TODO Auto-generated method stub

				}

			});
			EcommerceApplication.webClient.setJavaScriptErrorListener(new JavaScriptErrorListener() {

				@Override
				public void scriptException(HtmlPage page, ScriptException scriptException) {
					// TODO Auto-generated method stub

				}

				@Override
				public void timeoutError(HtmlPage page, long allowedTime, long executionTime) {
					// TODO Auto-generated method stub

				}

				@Override
				public void malformedScriptURL(HtmlPage page, String url, MalformedURLException malformedURLException) {
					// TODO Auto-generated method stub

				}

				@Override
				public void loadScriptError(HtmlPage page, java.net.URL scriptUrl, Exception exception) {
					// TODO Auto-generated method stub

				}

				@Override
				public void warn(String message, String sourceName, int line, String lineSource, int lineOffset) {
					// TODO Auto-generated method stub

				}

			});
			EcommerceApplication.webClient.setHTMLParserListener(new HTMLParserListener() {

				@Override
				public void error(String message, java.net.URL url, String html, int line, int column, String key) {
					// TODO Auto-generated method stub

				}

				@Override
				public void warning(String message, java.net.URL url, String html, int line, int column, String key) {
					// TODO Auto-generated method stub

				}

			});

			return EcommerceApplication.webClient;
		}
		return EcommerceApplication.webClient;
	}

	public void gatherData(String url, String text)
			throws FailingHttpStatusCodeException, MalformedURLException, IOException {

		final HtmlPage page1 = EcommerceApplication.singleton().getPage(url);

		final HtmlForm form = page1.getFormByName("site-search");

		final HtmlSubmitInput button = form.getInputByValue("Ir");
		final HtmlTextInput textField = form.getInputByName("field-keywords");

		textField.type(text);

		final HtmlPage page2 = button.click();

		List<DomElement> elements = page2.getByXPath("//span[@data-component-type='s-product-image']");

		if (elements.size() > 0) {

			for (DomElement element : elements) {

				DomElement link = element.getFirstElementChild();

				HtmlAnchor htmlAnchor = page2.getAnchorByHref(link.getAttributeDirect("href"));

				HtmlPage page3 = htmlAnchor.click();

				DomElement titulo = page3.getElementById("productTitle");
				DomElement preco = page3.getElementById("priceblock_ourprice");
				DomElement classificacao = page3.getElementById("acrPopover");

				Produto p = new Produto();

				if (titulo != null) {

					p.setNome(titulo.getTextContent().toString().trim().toUpperCase());
					p.setClassificacao(
							classificacao != null ? classificacao.getAttribute("title").toString().trim() : "-");

					if (preco != null) {

						String precoFormatado = preco.getTextContent().toString().trim().replace("R", "")
								.replace("$", "");
					
					
						p.setPreco(precoFormatado);
					} 
						
				

					p.setUrl(URL + link.getAttributeDirect("href"));
					produtos.add(p);
				}

			//	System.out.println(p);

			}

			List<DomElement> pagination = page2.getByXPath("//li[@class='a-last']");

			if (pagination.size() > 0) {

				DomElement nextPaginationLink = pagination.get(0).getFirstElementChild();

				HtmlAnchor nextWholePage = page2.getAnchorByHref(nextPaginationLink.getAttributeDirect("href"));

				this.gatherDataPerPage(URL + nextWholePage.getAttributeDirect("href"));
			}

		}

		if (produtos.size() > 0) {

			dbLayer.truncateTableProdutos();
			dbLayer.batchInsert(produtos);

			System.out.println("MENOR PREÇO");
			dbLayer.getMenorPreco();
			
			System.out.println("MELHORES CLASSIFICADOS E COM MELHORES PRECOS");
			dbLayer.getMelhoresClassificados();
			
		}

	}

	private void gatherDataPerPage(String url) throws IOException {

		final HtmlPage page1 = EcommerceApplication.singleton().getPage(url);

		List<DomElement> elements = page1.getByXPath("//span[@data-component-type='s-product-image']");

		if (elements.size() > 0) {

			for (DomElement element : elements) {

				DomElement link = element.getFirstElementChild();

				HtmlAnchor htmlAnchor = page1.getAnchorByHref(link.getAttributeDirect("href"));

				HtmlPage page3 = htmlAnchor.click();

				DomElement titulo = page3.getElementById("productTitle");
				DomElement preco = page3.getElementById("priceblock_ourprice");
				DomElement classificacao = page3.getElementById("acrPopover");

				Produto p = new Produto();

				if (titulo != null) {

					p.setNome(titulo.getTextContent().toString().trim().toUpperCase());
					p.setClassificacao(
							classificacao != null ? classificacao.getAttribute("title").toString().trim() : "-");

					if (preco != null) {

						String precoFormatado = preco.getTextContent().toString().trim().replace("R", "")
								.replace("$", "");
					
						p.setPreco(precoFormatado);
					} 

					p.setUrl(URL + link.getAttributeDirect("href"));
					produtos.add(p);
				}

				//System.out.println(p);
			}

			List<DomElement> pagination = page1.getByXPath("//li[@class='a-last']");

			if (pagination.size() > 0) {

				DomElement nextPaginationLink = pagination.get(0).getFirstElementChild();

				HtmlAnchor nextWholePage = page1.getAnchorByHref(nextPaginationLink.getAttributeDirect("href"));

				this.gatherDataPerPage(URL + nextWholePage.getAttributeDirect("href"));
			}
		}

	}
}
