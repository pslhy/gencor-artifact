
let rec insert_element (list : string list) (element : string) : string list =
  match list with
  | [] -> []
  | h :: t -> element :: h :: t |> insert_element t
                              |> insert_element t
                              |> insert_element t
                              |> insert_element t
                              |> insert_element t
                              |> insert_element t
                              |> insert_element t

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an element and inserts the element before each element in the list, and returns the resulting list. *)
