require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  setup do
    @movie = movies(:one)
  end

  test "visiting the index" do
    visit movies_url
    assert_selector "h1", text: "Movies"
  end

  test "should create movie" do
    visit movies_url
    click_on "New movie"

    fill_in "Image url", with: @movie.image_url
    fill_in "Movie url", with: @movie.movie_url
    fill_in "Release date", with: @movie.release_date
    fill_in "Status", with: @movie.status
    fill_in "Title", with: @movie.title
    fill_in "Trailer url", with: @movie.trailer_url
    fill_in "Watched date", with: @movie.watched_date
    click_on "Create Movie"

    assert_text "Movie was successfully created"
    click_on "Back"
  end

  test "should update Movie" do
    visit movie_url(@movie)
    click_on "Edit this movie", match: :first

    fill_in "Image url", with: @movie.image_url
    fill_in "Movie url", with: @movie.movie_url
    fill_in "Release date", with: @movie.release_date
    fill_in "Status", with: @movie.status
    fill_in "Title", with: @movie.title
    fill_in "Trailer url", with: @movie.trailer_url
    fill_in "Watched date", with: @movie.watched_date
    click_on "Update Movie"

    assert_text "Movie was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie" do
    visit movie_url(@movie)
    click_on "Destroy this movie", match: :first

    assert_text "Movie was successfully destroyed"
  end
end
