(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an element and inserts the element before each element in the list, and returns the resulting list. *)
let rec insert_element (list : string list) (element : string) : string list =
  match list with
  | [] -> []
  | h :: t -> element :: h :: t |> insert_element t
                              |> insert_element t
                              |> insert_element t
                              |> insert_element t
                              |> ... (* insert_element t as many times as necessary *)
                              |> insert_element t
                              |> insert_element t
                              |> ...
                              |> insert_element t

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec insert_element (list : string list) (element : string) : string list =
  let helper (list : string list) : string list =
    match list with
    | [] -> []
    | h :: t -> if h = element then list else insert_element list element
  in
  helper list

