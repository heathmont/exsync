require Logger

defmodule ExSync do
  def start(_, _) do
    ExSync.SrcMonitor.start_link()
    ExSync.BeamMonitor.start_link()
    Logger.info "ExSync started."
    {:ok, self()}
  end

  def start() do
    Application.ensure_all_started(:exsync)
  end
end
