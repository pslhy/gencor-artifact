let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  let rec merge (l1 : int list) (l2 : int list) : int list =
    match l1, l2 with
    | [], _ -> l2
    | _, [] -> l1
    | h1 :: t1, h2 :: t2 ->
        if h1 <= h2 then h1 :: merge t1 l2
        else h2 :: merge l1 t2
  in
  merge (merge (num1 : int list) (num2 : int list)) (num3 : int list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
