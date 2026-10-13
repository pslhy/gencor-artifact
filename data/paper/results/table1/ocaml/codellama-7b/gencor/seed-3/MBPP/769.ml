
let rec diff (li1 : int list) (li2 : int list) : int list =
  match li1 with
  | [] -> []
  | h1 :: t1 ->
    let rec find_diff (h2 : int) (t2 : int list) =
      match t2 with
      | [] -> [ h1 ]
      | h2' :: t2' ->
        if h2 = h2' then find_diff h2 t2'
        else h1 :: find_diff h1 t2'
    in
    find_diff h1 t1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to get the difference between two lists. *)
