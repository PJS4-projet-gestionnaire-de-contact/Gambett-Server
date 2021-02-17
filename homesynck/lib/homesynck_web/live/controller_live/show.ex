defmodule HomesynckWeb.ControllerLive.Show do
  use HomesynckWeb, :live_view

  alias Homesynck.Sync

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:controller, Sync.get_controller!(id))}
  end

  defp page_title(:show), do: "Show Controller"
  defp page_title(:edit), do: "Edit Controller"
end
