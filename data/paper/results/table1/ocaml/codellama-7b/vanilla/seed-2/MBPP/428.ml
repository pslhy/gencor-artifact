let rec shell_sort (my_list : int list) : int list =
  match my_list with
  | [] -> []
  | [x] -> [x]
  | x :: y :: xs ->
      let left = x :: shell_sort (my_list @ []) in
      let right = shell_sort xs in
      let rec insert left right =
        match left, right with
        | [], y :: ys -> y :: right
        | x :: xs, y :: ys ->
            if x < y then
              x :: insert xs (y :: ys)
            else
              y :: insert left ys in
      insert left right


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
