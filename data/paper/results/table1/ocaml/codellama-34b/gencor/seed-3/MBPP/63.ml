
let rec max_difference (test_list :  (int * int) list) : int =
  if List.length test_list = 0 then
    0
  else
    let max_diff = ref 0 in
    let rec loop (head, tail) =
      if List.length tail = 0 then
        max_diff
      else
        let new_diff = abs (fst head - fst (List.hd tail)) in
        if new_diff > !max_diff then
          max_diff := new_diff
        else
          ();
        loop (List.tl tail)
    in
    loop test_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
