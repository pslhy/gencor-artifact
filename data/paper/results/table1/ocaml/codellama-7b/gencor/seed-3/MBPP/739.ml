
let rec find_Index (n : int) : int =
  if n = 1 then
    1
  else
    let triangular_number = (n * (n + 1)) / 2 in
    let digits = string_of_int triangular_number |> String.length in
    if digits = n then
      (-1)
    else
      triangular_number |>
      List.init (digits - 1) ~find_Index |>
      List.map ~find_Index |>
      List.concat_map ~find_Index |>
      List.filter_map ~find_Index |>
      List.iter ~find_Index |>
      List.rev |>
      List.hd |>
      List.tl |>
      List.hd

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
