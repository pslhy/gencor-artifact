
let rec comb_sort (nums : int list) : int list =
  let d = ref 1 in
  let gap = ref (List.length nums) in
  let sorted = ref false in
  while not !sorted do
    sorted := true;
    for i = !gap - !d to !gap - 2 do
      if List.nth nums i > List.nth nums (i + 1) then
        let tmp = List.nth nums i in
        List.nth nums i := List.nth nums (i + 1);
        List.nth nums (i + 1) := tmp;
        sorted := false
    done;
    if not !sorted then d := !d * 1.25
  done;
  nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
