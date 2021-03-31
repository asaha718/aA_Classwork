export const fetchAllPokemon = () => {
  return $.ajax({
    method: "GET",
    url: "/api/pokemon"
  })
}

export const fetchPokeman = (id) => {
  return $.ajax({
    method: "GET",
    url: `/api/pokemon/${id}`
  })
}