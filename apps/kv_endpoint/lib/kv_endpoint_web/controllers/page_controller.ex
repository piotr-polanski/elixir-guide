defmodule KvEndpointWeb.PageController do
  use KvEndpointWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
