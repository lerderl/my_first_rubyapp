require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should NOT create article with bad word" do
    assert_no_difference("Article.count") do
      post articles_url, params: { article: { title: "Test#{rand(1000)}", content: "fuck" } }
    end
    assert_response :unprocessable_entity
  end

  test "should create article" do
    assert_difference("Article.count", 1) do
      post articles_url, params: {
        article: {
          title: "Unique Title #{rand(1000)}", # Ensures uniqueness
          content: "Valid content that isn't too long and contains no bad words"
        }
      }
    end
    # assert_difference("Article.count") do
    #   post articles_url, params: { article: { content: @article.content, title: @article.title } }
    # end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: {
      article: {
        title: "Updated Title #{rand(1000)}", # Ensures uniqueness
        content: "Short and clean content" # Avoids validation errors
      }
    }
    # patch article_url(@article), params: { article: { content: @article.content, title: @article.title } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference("Article.count", -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
