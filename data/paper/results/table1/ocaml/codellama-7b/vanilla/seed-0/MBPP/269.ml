let rec ascii_value (k : string) : int =
  match k with
  | k :: [] -> k |> (fun x -> x |> int_of_char)
  | k :: l ->
      k |> (fun x -> x |> int_of_char) + l |> (fun x -> x |> ascii_value)
  | [] -> -1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
