(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
let rec min_product_tuple (list1 :  (int * int) list) : int =
  if list1 = [] then
    None
  else
    let minimum = ref (fst (List.hd list1) * snd (List.hd list1)) in
    for i = 0 to (List.length list1 - 1) do
      let (a, b) = List.nth list1 i in
      if a * b < !minimum then
        minimum := a * b
    done;
    Some !minimum

