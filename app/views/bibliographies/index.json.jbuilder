json.array!(@bibliographies) do |bibliography|
  json.extract! bibliography, :id, :cited_work, :volume, :page, :comment
  json.url bibliography_url(bibliography, format: :json)
end
