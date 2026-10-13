let rec max_length (list1 : int list list) :  int * int list =
  let rec length_and_list = function
    | [] -> (0, [])
    | (x::xs) as l -> (List.length l, l)
  in
  let max_elem a b = if (fst a) > (fst b) then a else b in
  List.fold_left max_elem (0, []) (List.map length_and_list list1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
